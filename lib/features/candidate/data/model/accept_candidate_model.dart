import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';

class AcceptCandidateModel extends AcceptCandidateEntity {
   AcceptCandidateModel({
    required super.jobIdentity,
    required super.candidateIdentity,
    required super.remark,
    required super.ratings,
    required super.skillId,
  });

  factory AcceptCandidateModel.fromEntity(AcceptCandidateEntity entity) =>
      AcceptCandidateModel(
        jobIdentity: entity.jobIdentity,
        candidateIdentity: entity.candidateIdentity,
        remark: entity.remark,
        ratings: entity.ratings,
        skillId: entity.skillId,
      );

  Map<String, dynamic> toJson() => {
        'job_merging_identity': jobIdentity,
        'candidate_identity': candidateIdentity,
        'remark': remark,
        'ratting': ratings,
        'skill_id': skillId,
      };
}
