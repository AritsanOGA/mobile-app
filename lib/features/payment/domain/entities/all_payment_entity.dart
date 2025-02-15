import 'package:equatable/equatable.dart';

class AllPaymentEntity extends Equatable {
  final int id;
  final String amount;
  final String paymentIdentity;
  final String jobIdentity;
  final String jobTitle;
  final String logo;
  final String paymentGateway;
  final DateTime createdAt;

  const AllPaymentEntity({
    required this.id,
    required this.amount,
    required this.paymentIdentity,
    required this.jobIdentity,
    required this.jobTitle,
    required this.logo,
    required this.paymentGateway,
    required this.createdAt,
  });

  @override
  List<Object> get props =>
      [id, amount, paymentIdentity, jobIdentity, jobTitle, logo, paymentGateway, createdAt];
}
