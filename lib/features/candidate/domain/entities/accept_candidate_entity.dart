import 'package:equatable/equatable.dart';

class AcceptCandidateEntity extends Equatable {
  final String jobIdentity;
  final String candidateIdentity;
  final String remark;
  final List<int> ratings;
  final List<int> skillId;

  AcceptCandidateEntity({
    required this.jobIdentity,
    required this.candidateIdentity,
    required this.remark,
    required this.ratings,
    required this.skillId,
  });

  @override
  List<Object?> get props => [
        jobIdentity,
        candidateIdentity,
        remark,
        ratings,
        skillId,
      ];
}
