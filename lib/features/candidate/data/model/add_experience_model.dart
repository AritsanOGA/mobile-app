import 'package:artisan_oga/features/candidate/domain/entities/add_experience_entity.dart';

class AddExperienceModel extends AddExperienceEntity {
  AddExperienceModel({
    required super.userId,
    required super.companyName,
    required super.role,
    required super.responsibilities,
    required super.startYear,
    required super.yearEnd,
    required super.identity,
    required super.title,
  });
  factory AddExperienceModel.fromEntity(AddExperienceEntity entity) =>
      AddExperienceModel(
        title: entity.title,
        identity: entity.identity,
        responsibilities: entity.responsibilities,
        userId: entity.userId,
        role: entity.role,
        companyName: entity.companyName,
        startYear: entity.startYear,
        yearEnd: entity.yearEnd,
      );
  factory AddExperienceModel.fromJson(Map<String, dynamic> json) {
    return AddExperienceModel(
      title: json['title'],
      identity: json['identity'],
      userId: json['user_id'],
      companyName: json['company_name'],
      role: json['role'],
      responsibilities: json['responsibilities'],
      startYear: json['start_year'],
      yearEnd: json['year_end'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'company_name': companyName,
      'role': role,
      'responsibilities': responsibilities,
      'start_year': startYear,
      'year_end': yearEnd,
    };
  }
}
