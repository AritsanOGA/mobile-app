import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/local_storage.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/payment/data/model/all_invoice_model.dart';
import 'package:artisan_oga/features/payment/data/model/all_payment_model.dart';
import 'package:artisan_oga/features/payment/data/model/card_payment_model.dart';
import 'package:artisan_oga/features/payment/data/model/get_invoice_model.dart';
import 'package:artisan_oga/features/payment/data/model/post_invoice_model.dart';
import 'package:artisan_oga/features/payment/data/model/transfer_payment_details_model.dart';
import 'package:artisan_oga/features/payment/data/model/verify_payment_model.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_payment_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/verify_payment_entity.dart';

abstract class PaymentRemoteDataSource {
  Future<GetInvoiceEntity> getInvoice();
  Future<GetInvoiceEntity> getInvoiceWithId(String identity);
  Future<List<AllInvoiceEntity>> getAllInvoice();
  Future<List<AllPaymentEntity>> getAllPayment();
  Future<bool> transferPayment(TransferPaymentDetailsEntity entity);

  Future<bool> cardPayment(CardPaymentDetailsEntity entity);

  Future<bool> postInvoice(PostInvoiceEntity entity);
  Future<VerifyFlutterwavePaymentEntity> verifyPayment(String transactionId);
}

class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  final ApiService api;
  final UserService userService;
  final LocalStorageService localStorage;

  PaymentRemoteDataSourceImpl(this.api, this.userService, this.localStorage);

  @override
  Future<bool> cardPayment(CardPaymentDetailsEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.cardPayment,
      headers: userService.authorizationHeader,
      body: CardPaymentDetailsModel.fromEntity(entity).toJson(),
    );
    print('what $result');
    return true;
  }

  @override
  Future<GetInvoiceEntity> getInvoice() async {
    final identity = localStorage.getFromDisk(
      'identity',
    );
    print('my $identity');
    final result = await api.get(
        url: AppApiEndpoint.getInvoice,
        headers: userService.authorizationHeader,
        queryParameters: {"identity": identity}) as Map<String, dynamic>;

    return GetInvoiceModel.fromJson(
      result['data'] as Map<String, dynamic>,
    );
  }

  @override
  Future<bool> postInvoice(PostInvoiceEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.generateInvoice,
        headers: userService.authorizationHeader,
        body: PostInvoiceModel.fromEntity(entity).toJson());
    String identity = result['data']['identity'];

    await localStorage.saveToDisk('identity', identity);
    return true;
  }

  @override
  Future<bool> transferPayment(TransferPaymentDetailsEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.bankPayment,
      headers: userService.authorizationHeader,
      body: TransferPaymentDetailsModel.fromEntity(entity).toJson(),
    );
    print('what $result');
    return true;
  }

  @override
  Future<VerifyFlutterwavePaymentEntity> verifyPayment(
      String transactionId) async {
    final String flutterwaveSecretTestKey =
        'FLWSECK_TEST-4c5080741c3da4bb967f0ef7aef9c10a-X';
    final result = await api.get(
        url: Uri.parse(
            'https://api.flutterwave.com/v3/transactions/${transactionId}/verify'),
        headers: {
          'Authorization': 'Bearer $flutterwaveSecretTestKey',
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        });

    return VerifyFlutterwavePaymentModel.fromJson(
      result['data'] as Map<String, dynamic>,
    );
  }

  @override
  Future<List<AllInvoiceEntity>> getAllInvoice() async {
    final result = await api.get(
      url: AppApiEndpoint.getInvoices,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;
    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => AllInvoiceModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
    ;
  }

  @override
  Future<List<AllPaymentEntity>> getAllPayment() async {
    final result = await api.get(
      url: AppApiEndpoint.getPayments,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;
    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => AllPaymentModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<GetInvoiceEntity> getInvoiceWithId(String identity) async {
    final result = await api.get(
        url: AppApiEndpoint.getInvoice,
        headers: userService.authorizationHeader,
        queryParameters: {"identity": identity}) as Map<String, dynamic>;

    return GetInvoiceModel.fromJson(
      result['data'] as Map<String, dynamic>,
    );
  }
}
