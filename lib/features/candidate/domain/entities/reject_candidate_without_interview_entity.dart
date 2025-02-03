import 'package:equatable/equatable.dart';

class RejectCandidateWithoutInterviewEntity extends Equatable {
  final String jobMergingdentity;
  final String candidateIdentity;
  final String remark;

  RejectCandidateWithoutInterviewEntity({
    required this.jobMergingdentity,
    required this.candidateIdentity,
    required this.remark,
  });

  @override
  List<Object?> get props => [
        jobMergingdentity,
        candidateIdentity,
        remark,
      ];
}
