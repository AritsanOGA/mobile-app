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
  const factory PaymentEvent.getInvoice(String identity) = _GetInvoice;
  const factory PaymentEvent.updatePricePercent(
      String value, double totalPrice, double percentage) = _UpdatePricePercent;

  const factory PaymentEvent.updatePaymentMethod(
    String value,
  ) = _UpdatePaymentMethod;

  const factory PaymentEvent.updateTypeOfCurrencyBank(
    String value,
  ) = _UpdateTypeOfCurrencyBank;
  const factory PaymentEvent.updateDollarAccount(
    String value,
  ) = _UpdateDollarAccount;

  const factory PaymentEvent.updateNairaAccount(
    String value,
  ) = _UpdateNairaAccount;
}
