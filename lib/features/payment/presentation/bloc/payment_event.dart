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
  const factory PaymentEvent.getAllInvoice() = _GetAllInvoice;
  const factory PaymentEvent.getAllPayment() = _GetAllPayment;
  const factory PaymentEvent.verifyPayment(String transactionId) =
      _VerifyPayment;

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
  const factory PaymentEvent.initializeTransactionEvent(
    BuildContext context,
    String value,
    String amount,
    Customer customer,
  ) = _InitializeTransactionEvent;
  const factory PaymentEvent.verifyTransactionEvent(
    String value,
  ) = _VerifyTransactionEvent;
}
