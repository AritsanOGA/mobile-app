part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.started() = _Started;

  const factory PaymentEvent.transferPayment(
      TransferPaymentDetailsEntity param) = _TransferPayment;
  const factory PaymentEvent.cardPayment(CardPaymentDetailsEntity param) =
      _CardPayment;

  const factory PaymentEvent.postInvoice(PostInvoiceEntity param) =
      _PostInvoice;
  const factory PaymentEvent.getInvoice() = _GetInvoice;
}
