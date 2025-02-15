import 'package:artisan_oga/features/payment/domain/entities/all_invoice_entity.dart';

class AllInvoiceModel extends AllInvoiceEntity {
  const AllInvoiceModel({
    required super.id,
    required super.invoiceStatus,
    required super.amount,
    required super.invoiceIdentity,
    required super.jobIdentity,
    required super.jobTitle,
    required super.logo,
  });

  /// Convert from JSON to Model
  factory AllInvoiceModel.fromJson(Map<String, dynamic> json) {
    return AllInvoiceModel(
      id: json["id"],
      invoiceStatus: json["invoice_status"] ?? '',
      amount: json["amount"] ?? '',
      invoiceIdentity: json["invoice_identity"] ?? "",
      jobIdentity: json["job_identity"] ?? '',
      jobTitle: json["job_title"],
      logo: json["image"] ?? '',
    );
  }

  /// Convert from Entity to Model
  factory AllInvoiceModel.fromEntity(AllInvoiceEntity entity) {
    return AllInvoiceModel(
      id: entity.id,
      invoiceStatus: entity.invoiceStatus,
      amount: entity.amount,
      invoiceIdentity: entity.invoiceIdentity,
      jobIdentity: entity.jobIdentity,
      jobTitle: entity.jobTitle,
      logo: entity.logo,
    );
  }

  /// Convert Model to JSON
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "invoice_status": invoiceStatus,
      "amount": amount,
      "invoice_identity": invoiceIdentity,
      "job_identity": jobIdentity,
      "job_title": jobTitle,
      "image": logo,
    };
  }
}
