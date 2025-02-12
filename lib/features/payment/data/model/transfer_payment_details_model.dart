import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';

class TransferPaymentDetailsModel extends TransferPaymentDetailsEntity {
  TransferPaymentDetailsModel({
    required super.identity,
    required super.trxId,
    required super.bank,
  });
  factory TransferPaymentDetailsModel.fromEntity(
          TransferPaymentDetailsEntity entity) =>
      TransferPaymentDetailsModel(
        identity: entity.identity,
        trxId: entity.trxId,
        bank: entity.bank,
      );
  factory TransferPaymentDetailsModel.fromJson(Map<String, dynamic> json) =>
      TransferPaymentDetailsModel(
        identity: json["identity"].toString(), 
        trxId: json["trx_id"].toString(), 
        bank: json["bank"].toString(), 
      );

  Map<String, dynamic> toJson() => {
        "identity": identity,
        "trx_id": trxId,
        "bank": bank,
      };
}
