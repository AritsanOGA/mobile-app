import 'package:artisan_oga/features/candidate/domain/entities/get_experience_entity.dart';

class GetExperienceModel extends GetExperienceEntity {
  GetExperienceModel({
    required super.id,
    required super.userId,
    required super.title,
    required super.purpose,
    required super.description,
    required super.startYear,
    required super.yearEnd,
    required super.identity,
  });
  factory GetExperienceModel.fromEntity(GetExperienceEntity entity) =>
      GetExperienceModel(
        id: entity.id,
        description: entity.description,
        userId: entity.userId,
        purpose: entity.purpose,
        title: entity.title,
        startYear: entity.startYear,
        yearEnd: entity.yearEnd,
        identity: entity.identity,
      );
  factory GetExperienceModel.fromJson(Map<String, dynamic> json) {
    return GetExperienceModel(
        id: json['id'],
        userId: json['user_id'],
        title: json['title'],
        purpose: json['purpose'],
        description: json['desc'],
        startYear: json['start_year'],
        yearEnd: json['end_year'],
        identity: json['identity']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'title': title,
      'purpose': purpose,
      'desc': description,
      'start_year': startYear,
      'end_year': yearEnd,
      'identity': identity
    };
  }
}
