import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';

class CardPaymentDetailsModel extends CardPaymentDetailsEntity {
  CardPaymentDetailsModel({
    required super.trxId,
    required super.identity,
    required super.noOfCandidate,
    required super.package,
  });

  factory CardPaymentDetailsModel.fromEntity(CardPaymentDetailsEntity entity) =>
      CardPaymentDetailsModel(
        trxId: entity.trxId,
        identity: entity.identity,
        noOfCandidate: entity.noOfCandidate,
        package: entity.package,
      );


  factory CardPaymentDetailsModel.fromJson(Map<String, dynamic> json) =>
      CardPaymentDetailsModel(
        trxId: json["trx_id"] as String? ?? '',
        identity: json["identity"] as String? ?? '',
        noOfCandidate: int.tryParse(json["no_of_candidate"]?.toString() ?? '0') ?? 0,
        package: json["package"] as String? ?? '',
      );

  Map<String, dynamic> toJson() => {
        "trx_id": trxId,
        "identity": identity,
        "no_of_candidate": noOfCandidate.toString(),
        "package": package,
      };
}
