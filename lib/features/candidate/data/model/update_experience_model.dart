import 'package:artisan_oga/features/candidate/domain/entities/update_experience_entity.dart';

class UpdateExperienceModel extends UpdateExperienceEntity {
  UpdateExperienceModel({
    required super.role,
    required super.description,
    required super.startYear,
    required super.endYear,
    required super.identity,
    required super.title,
  });
  factory UpdateExperienceModel.fromEntity(UpdateExperienceEntity entity) =>
      UpdateExperienceModel(
        title: entity.title,
        identity: entity.identity,
        description: entity.description,
        role: entity.role,
        startYear: entity.startYear,
        endYear: entity.endYear,
      );
  factory UpdateExperienceModel.fromJson(Map<String, dynamic> json) {
    return UpdateExperienceModel(
      title: json['title'],
      identity: json['identity'],
      role: json['role'],
      description: json['description'],
      startYear: json['start_year'],
      endYear: json['end_year'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'identity': identity,
      'title': title,
      'role': role,
      'description': description,
      'start_year': startYear,
      'end_year': endYear,
    };
  }
}
