import 'package:equatable/equatable.dart';

class PostInvoiceEntity extends Equatable {
  final double amount;
  final double balance;
  final String currency;
  final int percentage;
  final String package;

  const PostInvoiceEntity({
    required this.amount,
    required this.balance,
    required this.currency,
    required this.percentage,
    required this.package,
  });

  @override
  List<Object?> get props => [amount, balance, currency, percentage, package];
}
