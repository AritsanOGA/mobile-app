import 'package:artisan_oga/features/candidate/domain/entities/add_education_entity.dart';

class AddEducationModel extends AddEducationEntity {
  const AddEducationModel({
    required super.userId,
    required super.title,
    required super.courseName,
    required super.description,
    required super.year,
  });
  factory AddEducationModel.fromEntity(AddEducationEntity entity) =>
      AddEducationModel(
        courseName: entity.courseName,
        userId: entity.userId,
        title: entity.title,
        description: entity.description,
        year: entity.year,
      );

  factory AddEducationModel.fromJson(Map<String, dynamic> json) {
    return AddEducationModel(
      userId: json['user_id'],
      title: json['title'],
      courseName: json['role'],
      description: json['description'],
      year: json['year'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'title': title,
      'course_name': courseName,
      'description': description,
      'year': year,
    };
  }
}
