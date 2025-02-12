import 'package:equatable/equatable.dart';

class TransferPaymentDetailsEntity extends Equatable {
  final String identity;
  final String trxId;
  final String bank;

  const TransferPaymentDetailsEntity({
    required this.identity,
    required this.trxId,
    required this.bank,
  });

  @override
  List<Object?> get props => [identity, trxId, bank];
}
