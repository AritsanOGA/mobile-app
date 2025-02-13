part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial({
    GetInvoiceEntity? getInvoice,
    String? paymentMethod,
    String? payingAll,
    String? errorMessage,
    @Default(PostInvoiceState.idle) PostInvoiceState postInvoiceState,
    @Default(TransferPaymentState.idle)
    TransferPaymentState transferPaymentState,
    @Default(CardPaymentState.idle) CardPaymentState cardPaymentState,
    @Default(GetInvoiceState.idle) GetInvoiceState getInvoiceState,
    @Default([
      "Yes",
      "No",
    ])
    List<String> payingAllList,
    @Default([
      "Pay With Card",
      "Bank Transfer",
    ])
    List<String> paymentMethodList,
  }) = _Initial;
}
