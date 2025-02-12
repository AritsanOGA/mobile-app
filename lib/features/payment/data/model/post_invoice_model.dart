import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';

class PostInvoiceModel extends PostInvoiceEntity {
  PostInvoiceModel({
    required super.amount,
    required super.balance,
    required super.currency,
    required super.percentage,
    required super.package,
  });

  factory PostInvoiceModel.fromEntity(PostInvoiceEntity entity) =>
      PostInvoiceModel(
        amount: entity.amount,
        balance: entity.balance,
        currency: entity.currency,
        percentage: entity.percentage,
        package: entity.package,
      );

  factory PostInvoiceModel.fromJson(Map<String, dynamic> json) =>
      PostInvoiceModel(
        amount: (json["amount"] as num?)?.toDouble() ?? 0.0,
        balance: (json["balance"] as num?)?.toDouble() ?? 0.0,
        currency: json["currency"] as String? ?? '',
        percentage: json["percentage"] as int? ?? 0,
        package: json["package"] as String? ?? '',
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "balance": balance,
        "currency": currency,
        "percentage": percentage,
        "package": package,
      };
}
