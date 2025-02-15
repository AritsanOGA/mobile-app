import 'package:equatable/equatable.dart';

class AllPaymentEntity extends Equatable {
  final int id;
  final String amount;
  final String paymentIdentity;
  final String jobIdentity;
  final String jobTitle;
  final String logo;

  const AllPaymentEntity({
    required this.id,
    required this.amount,
    required this.paymentIdentity,
    required this.jobIdentity,
    required this.jobTitle,
    required this.logo,
  });

  @override
  List<Object> get props => [id, amount, paymentIdentity, jobIdentity, jobTitle, logo];
}
