import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';

class TransferPaymentDetailsModel extends TransferPaymentDetailsEntity {
  TransferPaymentDetailsModel({
    required super.identity,
    required super.amount,
    required super.bank,
  });
  factory TransferPaymentDetailsModel.fromEntity(
          TransferPaymentDetailsEntity entity) =>
      TransferPaymentDetailsModel(
        identity: entity.identity,
        amount: entity.amount,
        bank: entity.bank,
      );
  factory TransferPaymentDetailsModel.fromJson(Map<String, dynamic> json) =>
      TransferPaymentDetailsModel(
        identity: json["identity"].toString(),
        amount: json["amount"].toString(),
        bank: json["bank"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "identity": identity,
        "amount": amount,
        "bank": bank,
      };
}
