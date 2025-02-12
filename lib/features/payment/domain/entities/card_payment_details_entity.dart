import 'package:equatable/equatable.dart';

class CardPaymentDetailsEntity extends Equatable {
  final String trxId;
  final String identity;
  final int noOfCandidate;
  final String package;

  const CardPaymentDetailsEntity({
    required this.trxId,
    required this.identity,
    required this.noOfCandidate,
    required this.package,
  });

  @override
  List<Object?> get props => [trxId, identity, noOfCandidate, package];
}
