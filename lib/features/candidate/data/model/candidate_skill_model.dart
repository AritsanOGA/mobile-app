import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';

class CandidateSkillModel extends CandidateSkillEntity {
  CandidateSkillModel({
    required super.id,
    required super.userId,
    required super.skills,
    required super.skillId,
    required super.createdAt,
    required super.updatedAt,
  });

  factory CandidateSkillModel.fromEntity(CandidateSkillEntity entity) =>
      CandidateSkillModel(
          id: entity.id,
          userId: entity.userId,
          skills: entity.skills,
          skillId: entity.skillId,
          createdAt: entity.createdAt,
          updatedAt: entity.updatedAt);
  factory CandidateSkillModel.fromJson(Map<String, dynamic> json) =>
      CandidateSkillModel(
        id: json["id"],
        userId: json["user_id"],
        skills: json["skills"],
        skillId: json["skill_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );
}
