part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial({
    GetInvoiceEntity? getInvoice,
    NoOfCandidateEntity? noOfCandidateEntity,
    @Default([]) List<AllInvoiceEntity> invoices,
    @Default([]) List<AllPaymentEntity> payments,
    VerifyFlutterwavePaymentEntity? verifyFlutterwavePaymentEntity,
    String? payingAll,
    String? typeOfCurrencyBank,
    String? errorMessage,
    @Default("--Select--") String dollarAccount,
    @Default("--Select--") String nairaAccount,
    @Default("--Select--") String euroAccount,
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
    @Default(NoOfCandidateState.idle) NoOfCandidateState noOfCandidateState,
    @Default(FlutterWavePaymentState.idle)
    FlutterWavePaymentState flutterwavePaymentState,
    @Default([
      "75",
      "100",
    ])
    List<String> payingAllList,
    @Default(["Naira Accounts", "Dollar Accounts", "Euro Accounts"])
    List<String> typeOfCurrencyBankList,
    @Default([
      "--Select--",
      //"Pay With Card",
      "Bank Transfer",
    ])
    List<String> paymentMethodList,
    @Default([
      "--Select--",
      "ACCESS Bank",
    ])
    List<String> dollarAccountList,
    @Default([
      "--Select--",
      "ZENITH BANK",
      "UBA",
    ])
    List<String> nairaAccountList,
    @Default([
      "--Select--",
      "ZENITH BANK",
    ])
    List<String> euroAccountList,
  }) = _Initial;
}
