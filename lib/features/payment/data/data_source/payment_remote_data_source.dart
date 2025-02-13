import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/features/payment/data/model/card_payment_model.dart';
import 'package:artisan_oga/features/payment/data/model/get_invoice_model.dart';
import 'package:artisan_oga/features/payment/data/model/post_invoice_model.dart';
import 'package:artisan_oga/features/payment/data/model/transfer_payment_details_model.dart';
import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';

abstract class PaymentRemoteDataSource {
  Future<GetInvoiceEntity> getInvoice(String identity);

  Future<bool> transferPayment(TransferPaymentDetailsEntity entity);

  Future<bool> cardPayment(CardPaymentDetailsEntity entity);

  Future<bool> postInvoice(PostInvoiceEntity entity);
}

class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  final ApiService api;

  PaymentRemoteDataSourceImpl(this.api);

  @override
  Future<bool> cardPayment(CardPaymentDetailsEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.cardPayment,
      body: CardPaymentDetailsModel.fromEntity(entity).toJson(),
    );
    print('what $result');
    return true;
  }

  @override
  Future<GetInvoiceEntity> getInvoice(String identity) async {
    final result = await api.get(
        url: AppApiEndpoint.getInvoice,
        queryParameters: {"identity": identity}) as Map<String, dynamic>;

    return GetInvoiceModel.fromJson(
      result['data'] as Map<String, dynamic>,
    );
  }

  @override
  Future<bool> postInvoice(PostInvoiceEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.generateInvoice,
      body: PostInvoiceModel.fromEntity(entity).toJson(),
    );
    print('what $result');
    return true;
  }

  @override
  Future<bool> transferPayment(TransferPaymentDetailsEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.makeBankTransferPayment,
      body: TransferPaymentDetailsModel.fromEntity(entity).toJson(),
    );
    print('what $result');
    return true;
  }
}
