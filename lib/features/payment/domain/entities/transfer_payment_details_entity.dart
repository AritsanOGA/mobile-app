import 'package:equatable/equatable.dart';

class TransferPaymentDetailsEntity extends Equatable {
  final String identity;
  final String amount;
  final String bank;

  const TransferPaymentDetailsEntity({
    required this.identity,
    required this.amount,
    required this.bank,
  });

  @override
  List<Object?> get props => [identity,amount , bank];
}
