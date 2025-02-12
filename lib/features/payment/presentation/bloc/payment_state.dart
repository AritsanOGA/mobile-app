part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial({
    GetInvoiceEntity? getInvoice,
    @Default(PostInvoiceState.idle) PostInvoiceState postInvoiceState,
    @Default(TransferPaymentState.idle)
    TransferPaymentState transferPaymentState,
    @Default(CardPaymentState.idle) CardPaymentState cardPaymentState,
    @Default(GetInvoiceState.idle) GetInvoiceState getInvoiceState,
  }) = _Initial;
}
