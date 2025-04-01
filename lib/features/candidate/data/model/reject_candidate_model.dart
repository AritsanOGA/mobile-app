import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_entity.dart';

class RejectCandidateModel extends RejectCandidateEntity {
  RejectCandidateModel({
    required super.jobMergingdentity,
    required super.candidateIdentity,
    required super.remark,
    required super.ratings,
    required super.skillId,
  });

  factory RejectCandidateModel.fromEntity(RejectCandidateEntity entity) =>
      RejectCandidateModel(
        jobMergingdentity: entity.jobMergingdentity,
        candidateIdentity: entity.candidateIdentity,
        remark: entity.remark,
        ratings: entity.ratings,
        skillId: entity.skillId,
      );

  Map<String, dynamic> toJson() => {
        'job_merging_identity': jobMergingdentity,
        'candidate_identity': candidateIdentity,
        'remark': remark,
        'ratting': ratings,
        'skill_id': skillId,
      };
}
