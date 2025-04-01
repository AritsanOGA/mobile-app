import 'package:equatable/equatable.dart';

class CandidateSkillEntity extends Equatable {
  final int? id;
  final int? userId;
  final String? skills;
  final dynamic skillId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const CandidateSkillEntity({
    this.id,
    this.userId,
    this.skills,
    this.skillId,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        skills,
        skillId,
        createdAt,
        updatedAt,
      ];
}
