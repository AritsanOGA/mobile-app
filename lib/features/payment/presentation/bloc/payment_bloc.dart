import 'dart:async';
import 'dart:developer';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_payment_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/verify_payment_entity.dart';
import 'package:artisan_oga/features/payment/domain/usecases/card_payment_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/get_all_invoice_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/get_all_payment_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/get_invoice_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/post_invoice_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/transfer_payment_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/verify_payment_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterwave_standard/core/flutterwave.dart';
import 'package:flutterwave_standard/models/requests/customer.dart';
import 'package:flutterwave_standard/models/requests/customizations.dart';
import 'package:flutterwave_standard/models/responses/charge_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bloc.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final Dio dio = Dio();
  PaymentBloc({
    CardPaymentUseCase? cardPaymentUsecase,
    GetInvoiceUsecase? getInvoiceUsecase,
    PostInvoiceUseCase? postInvoiceUseCase,
    TransferPaymentUseCase? transferPaymentUseCase,
    VerifyPaymentUseCase? verifyPaymentUseCase,
    GetAllPaymentUsecase? getAllPaymentUsecase,
    GetAllInvoiceUsecase? getAllInvoiceUsecase,
  })  : _cardPaymentUsecase = cardPaymentUsecase ?? locator(),
        _getInvoiceUsecase = getInvoiceUsecase ?? locator(),
        _postInvoiceUseCase = postInvoiceUseCase ?? locator(),
        _transferPaymentUseCase = transferPaymentUseCase ?? locator(),
        _verifyPaymentUseCase = verifyPaymentUseCase ?? locator(),
        _getAllInvoiceUsecase = getAllInvoiceUsecase ?? locator(),
        _getAllPaymentUsecase = getAllPaymentUsecase ?? locator(),
        super(_Initial()) {
    on<_TransferPayment>(_onTransferPayment);
    on<_CardPayment>(_onCardPayment);
    on<_PostInvoice>(_onPostInvoice);
    on<_GetAllPayment>(_onGetAllPayment);
    on<_GetAllInvoice>(_onGetAllInvoice);
    on<_GetInvoice>(_onGetInvoice);
    on<_UpdatePricePercent>(_onUpdatePricePercent);
    on<_UpdatePaymentMethod>(_onUpdatePaymentMethod);

    on<_UpdateTypeOfCurrencyBank>(_onUpdateTypeOfCurrencyBank);
    on<_UpdateNairaAccount>(_onUpdateNairaAccount);

    on<_UpdateDollarAccount>(_onUpdateDollarAccount);
    on<_InitializeTransactionEvent>(_onInitializeTransaction);

    on<_VerifyPayment>(_onVerifyPayment);
  }

  final CardPaymentUseCase _cardPaymentUsecase;
  final GetInvoiceUsecase _getInvoiceUsecase;
  final PostInvoiceUseCase _postInvoiceUseCase;
  final TransferPaymentUseCase _transferPaymentUseCase;
  final VerifyPaymentUseCase _verifyPaymentUseCase;
  final GetAllInvoiceUsecase _getAllInvoiceUsecase;
  final GetAllPaymentUsecase _getAllPaymentUsecase;

  FutureOr<void> _onPostInvoice(
      _PostInvoice event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(postInvoiceState: PostInvoiceState.loading));

    await _postInvoiceUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              postInvoiceState: PostInvoiceState.failure,
              errorMessage: error.message)),
          (result) =>
              emit(state.copyWith(postInvoiceState: PostInvoiceState.success)));
    });

    emit(state.copyWith(postInvoiceState: PostInvoiceState.idle));
  }

  FutureOr<void> _onCardPayment(
      _CardPayment event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(cardPaymentState: CardPaymentState.loading));

    await _cardPaymentUsecase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              cardPaymentState: CardPaymentState.failure,
              errorMessage: error.message)),
          (result) =>
              emit(state.copyWith(cardPaymentState: CardPaymentState.success)));
    });

    emit(state.copyWith(cardPaymentState: CardPaymentState.idle));
  }

  FutureOr<void> _onTransferPayment(
      _TransferPayment event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(transferPaymentState: TransferPaymentState.loading));

    await _transferPaymentUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              transferPaymentState: TransferPaymentState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
              transferPaymentState: TransferPaymentState.success)));
    });

    emit(state.copyWith(transferPaymentState: TransferPaymentState.idle));
  }

  FutureOr<void> _onGetInvoice(
      _GetInvoice event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(getInvoiceState: GetInvoiceState.loading));
    final result = await _getInvoiceUsecase(event.identity);
    result.fold(
      (error) => emit(
        state.copyWith(
          getInvoiceState: GetInvoiceState.failure,
          errorMessage: error.message,
        ),
      ),
      (invoice) => emit(
        state.copyWith(
          getInvoice: invoice,
          getInvoiceState: GetInvoiceState.success,
        ),
      ),
    );
    emit(state.copyWith(getInvoiceState: GetInvoiceState.idle));
  }

  FutureOr<void> _onUpdatePricePercent(
      _UpdatePricePercent event, Emitter<PaymentState> emit) {
    double newAmount = event.totalPrice * event.percentage;
    double newBalance = event.totalPrice - newAmount;
    emit(state.copyWith(
      payingAll: event.value,
      amount: newAmount,
      balance: newBalance,
      selectedPercentage: event.percentage,
    ));
  }

  FutureOr<void> _onUpdatePaymentMethod(
      _UpdatePaymentMethod event, Emitter<PaymentState> emit) {
    emit(state.copyWith(paymentMethod: event.value));
  }

  FutureOr<void> _onUpdateTypeOfCurrencyBank(
      _UpdateTypeOfCurrencyBank event, Emitter<PaymentState> emit) {
    emit(state.copyWith(typeOfCurrencyBank: event.value));
  }

  FutureOr<void> _onUpdateNairaAccount(
      _UpdateNairaAccount event, Emitter<PaymentState> emit) {
    emit(state.copyWith(nairaAccount: event.value));
  }

  FutureOr<void> _onUpdateDollarAccount(
      _UpdateDollarAccount event, Emitter<PaymentState> emit) {
    emit(state.copyWith(dollarAccount: event.value));
  }

  FutureOr<void> _onInitializeTransaction(
      _InitializeTransactionEvent event, Emitter<PaymentState> emit) async {
    print('hiloading');
    emit(state.copyWith(
        flutterwavePaymentState: FlutterWavePaymentState.loading));
    final Flutterwave flutterwave = Flutterwave(
      context: event.context,
      publicKey: 'FLWPUBK_TEST-c501afa423b7f306de5c70693b48b28d-X',
      currency: "NGN",
      redirectUrl: 'https://www.google.com',
      txRef: "${DateTime.now().millisecondsSinceEpoch}",
      amount: event.amount,
      customer: event.customer,
      paymentOptions: "card",
      customization: Customization(title: "Artisan Oga"),
      isTestMode: true,
    );

    print('hiloadingfter');
    try {
      final ChargeResponse paymentResponse = await flutterwave.charge();
      print('is it ${paymentResponse}');
      if (paymentResponse.success == true) {
        log('Payment success: ${paymentResponse.transactionId}');

        // final prefs = await SharedPreferences.getInstance();
        // await prefs.setString('trxId', '${paymentResponse.transactionId}');

        //   add(PaymentEvent.verifyPayment(paymentResponse.transactionId ?? ''));
        // add(PaymentEvent.cardPayment(CardPaymentDetailsEntity(
        //     noOfCandidate: 1, identity: '', trxId: '', package: '')));
        emit(state.copyWith(
            flutterwavePaymentState: FlutterWavePaymentState.success));
      } else {
        emit(state.copyWith(
            flutterwavePaymentState: FlutterWavePaymentState.failure));
      }
    } catch (e) {
      emit(state.copyWith(
          flutterwavePaymentState: FlutterWavePaymentState.failure));
    }
    emit(state.copyWith(flutterwavePaymentState: FlutterWavePaymentState.idle));
  }

  FutureOr<void> _onVerifyPayment(event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(getInvoiceState: GetInvoiceState.loading));
    final result = await _verifyPaymentUseCase(event.identity);
    result.fold(
      (error) => emit(
        state.copyWith(
          flutterwavePaymentState: FlutterWavePaymentState.failure,
          errorMessage: error.message,
        ),
      ),
      (verifyPayment) => emit(
        state.copyWith(
          verifyFlutterwavePaymentEntity: verifyPayment,
          flutterwavePaymentState: FlutterWavePaymentState.success,
        ),
      ),
    );
    emit(state.copyWith(flutterwavePaymentState: FlutterWavePaymentState.idle));
  }

  FutureOr<void> _onGetAllPayment(
      _GetAllPayment event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(getAllPaymentState: GetAllPaymentState.loading));
    final result = await _getAllPaymentUsecase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getAllPaymentState: GetAllPaymentState.failure,
          errorMessage: error.message,
        ),
      ),
      (payments) => emit(
        state.copyWith(
          payments: payments,
          getAllPaymentState: GetAllPaymentState.success,
        ),
      ),
    );
    emit(state.copyWith(getAllPaymentState: GetAllPaymentState.idle));
  }

  FutureOr<void> _onGetAllInvoice(
      _GetAllInvoice event, Emitter<PaymentState> emit) async {
    emit(state.copyWith(getAllInvoiceState: GetAllInvoiceState.loading));
    final result = await _getAllInvoiceUsecase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getAllInvoiceState: GetAllInvoiceState.failure,
          errorMessage: error.message,
        ),
      ),
      (invoice) => emit(
        state.copyWith(
          invoices: invoice,
          getAllInvoiceState: GetAllInvoiceState.success,
        ),
      ),
    );
    emit(state.copyWith(getAllInvoiceState: GetAllInvoiceState.idle));
  }
}
