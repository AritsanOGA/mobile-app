import 'package:equatable/equatable.dart';

class AllInvoiceEntity extends Equatable {
  final int id;
  final String invoiceStatus;
  final String amount;
  final String invoiceIdentity;
  final String jobIdentity;
  final String jobTitle;
  final String logo;
   final DateTime createdAt;

  const AllInvoiceEntity({
    required this.id,
    required this.invoiceStatus,
    required this.amount,
    required this.invoiceIdentity,
    required this.jobIdentity,
    required this.jobTitle,
    required this.logo,
    required this.createdAt
  });

  @override
  List<Object> get props =>
      [id, amount, invoiceStatus, invoiceIdentity, jobIdentity, jobTitle, logo, createdAt];
}
