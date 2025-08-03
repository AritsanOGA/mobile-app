import 'package:equatable/equatable.dart';

class HireMeEntity extends Equatable {
  const HireMeEntity({
    required this.candidateIdentity,
    required this.candidatePhone,
    required this.fullName,
    required this.employerPhone,
    required this.employerEmail,
  });

  final String candidateIdentity;
  final String candidatePhone;
  final String fullName;
  final String employerPhone;
  final String employerEmail;

  @override
  List<Object?> get props => [
        candidateIdentity,
        candidatePhone,
        fullName,
        employerPhone,
        employerEmail,
      ];
}
