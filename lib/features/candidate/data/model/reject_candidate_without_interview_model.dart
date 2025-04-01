import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_without_interview_entity.dart';

class RejectCandidateWithoutInterviewModel extends RejectCandidateWithoutInterviewEntity {
  RejectCandidateWithoutInterviewModel({
    required super.jobMergingdentity,
    required super.candidateIdentity,
    required super.remark,
  });

  factory RejectCandidateWithoutInterviewModel.fromEntity(
          RejectCandidateWithoutInterviewEntity entity) =>
      RejectCandidateWithoutInterviewModel(
        jobMergingdentity: entity.jobMergingdentity,
        candidateIdentity: entity.candidateIdentity,
        remark: entity.remark,
      );

  Map<String, dynamic> toJson() => {
        'job_merging_identity': jobMergingdentity,
        'candidate_identity': candidateIdentity,
        'remark': remark,
      };
}
