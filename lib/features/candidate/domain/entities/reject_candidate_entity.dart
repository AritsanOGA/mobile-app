import 'package:equatable/equatable.dart';

class RejectCandidateEntity extends Equatable {
  final String jobMergingdentity;
  final String candidateIdentity;
  final String remark;
  final List<int> ratings;
  final List<int> skillId;

  RejectCandidateEntity({
    required this.jobMergingdentity,
    required this.candidateIdentity,
    required this.remark,
    required this.ratings,
    required this.skillId,
  });

  @override
  List<Object?> get props => [
        jobMergingdentity,
        candidateIdentity,
        remark,
        ratings,
        skillId,
      ];
}
