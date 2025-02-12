import 'dart:async';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/usecases/card_payment_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/get_invoice_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/post_invoice_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/transfer_payment_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bloc.freezed.dart';
part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc({
    CardPaymentUseCase? cardPaymentUsecase,
    GetInvoiceUsecase? getInvoiceUsecase,
    PostInvoiceUseCase? postInvoiceUseCase,
    TransferPaymentUseCase? transferPaymentUseCase,
  })  : _cardPaymentUsecase = cardPaymentUsecase ?? locator(),
        _getInvoiceUsecase = getInvoiceUsecase ?? locator(),
        _postInvoiceUseCase = postInvoiceUseCase ?? locator(),
        _transferPaymentUseCase = transferPaymentUseCase ?? locator(),
        super(_Initial()) {
    on<_TransferPayment>(_onTransferPayment);
    on<_CardPayment>(_onCardPayment);
    on<_PostInvoice>(_onPostInvoice);
    on<_GetInvoice>(_onGetInvoice);
  }

  final CardPaymentUseCase _cardPaymentUsecase;
  final GetInvoiceUsecase _getInvoiceUsecase;
  final PostInvoiceUseCase _postInvoiceUseCase;
  final TransferPaymentUseCase _transferPaymentUseCase;

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
}
