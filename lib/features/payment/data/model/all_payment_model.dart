import 'package:artisan_oga/features/payment/domain/entities/all_payment_entity.dart';

class AllPaymentModel extends AllPaymentEntity {
  const AllPaymentModel({
    required super.id,
    required super.amount,
    required super.paymentIdentity,
    required super.jobIdentity,
    required super.jobTitle,
    required super.logo,
  });

  /// Convert from JSON to Model
  factory AllPaymentModel.fromJson(Map<String, dynamic> json) {
    return AllPaymentModel(
      id: json["id"],
      amount: json["amount"].toString(),
      paymentIdentity: json["payment_identity"] ?? "",
      jobIdentity: json["job_identity"],
      jobTitle: json["job_title"],
      logo: json["logo"],
    );
  }

  /// Convert from Entity to Model
  factory AllPaymentModel.fromEntity(AllPaymentEntity entity) {
    return AllPaymentModel(
      id: entity.id,
      amount: entity.amount,
      paymentIdentity: entity.paymentIdentity,
      jobIdentity: entity.jobIdentity,
      jobTitle: entity.jobTitle,
      logo: entity.logo,
    );
  }

  /// Convert Model to JSON
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "amount": amount,
      "payment_identity": paymentIdentity,
      "job_identity": jobIdentity,
      "job_title": jobTitle,
      "logo": logo,
    };
  }
}
