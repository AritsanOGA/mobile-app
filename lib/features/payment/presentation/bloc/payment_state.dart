part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial({
    GetInvoiceEntity? getInvoice,
    @Default([]) List<AllInvoiceEntity> invoices,
    @Default([]) List<AllPaymentEntity> payments,
    VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
    String? payingAll,
    String? typeOfCurrencyBank,
    String? errorMessage,
    @Default('--Select--') String dollarAccount,
    @Default('--Select--') String nairaAccount,
    double? price,
    double? percentage,
    double? amount,
    double? balance,
    double? selectedPercentage,
    @Default('--Select--') String paymentMethod,
    @Default(PostInvoiceState.idle) PostInvoiceState postInvoiceState,
    @Default(TransferPaymentState.idle)
    TransferPaymentState transferPaymentState,
    @Default(CardPaymentState.idle) CardPaymentState cardPaymentState,
    @Default(GetInvoiceState.idle) GetInvoiceState getInvoiceState,
    @Default(GetAllInvoiceState.idle) GetAllInvoiceState getAllInvoiceState,
    @Default(GetAllPaymentState.idle) GetAllPaymentState getAllPaymentState,
    @Default(FlutterWavePaymentState.idle)
    FlutterWavePaymentState flutterwavePaymentState,
    @Default([
      "75",
      "100",
    ])
    List<String> payingAllList,
    @Default([
      "Naira Accounts",
      "Dollar Accounts",
    ])
    List<String> typeOfCurrencyBankList,
    @Default([
      "--Select--",
      "Pay With Card",
      "Bank Transfer",
    ])
    List<String> paymentMethodList,
    @Default([
      "--Select--",
      "ACCESS Bank",
      "SWISS Bank",
    ])
    List<String> dollarAccountList,
    @Default([
      "--Select--",
      "ABC Bank",
      "DEFA Bank",
    ])
    List<String> nairaAccountList,
  }) = _Initial;
}
