import 'package:artisan_oga/features/candidate/domain/entities/add_experience_entity.dart';

class AddExperienceModel extends AddExperienceEntity {
   AddExperienceModel({
    required super.userId,
    required super.title,
    required super.role,
    required super.serviceDescription,
    required super.startYear,
    required super.yearEnd,
  });
  factory AddExperienceModel.fromEntity(AddExperienceEntity entity) =>
      AddExperienceModel(
        serviceDescription: entity.serviceDescription,
        userId: entity.userId,
        role: entity.role,
        title: entity.title,
        startYear: entity.startYear,
        yearEnd: entity.yearEnd,
      );
  factory AddExperienceModel.fromJson(Map<String, dynamic> json) {
    return AddExperienceModel(
      userId: json['user_id'],
      title: json['title'],
      role: json['role'],
      serviceDescription: json['service_description'],
      startYear: json['start_year'],
      yearEnd: json['year_end'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'title': title,
      'role': role,
      'service_description': serviceDescription,
      'start_year': startYear,
      'year_end': yearEnd,
    };
  }
}
