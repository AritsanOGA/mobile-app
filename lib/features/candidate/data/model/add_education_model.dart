import 'package:artisan_oga/features/candidate/domain/entities/add_education_entity.dart';

class AddEducationModel extends AddEducationEntity {
  const AddEducationModel({
    required super.userId,
    required super.schoolName,
    required super.courseName,
    required super.degree,
    required super.year,
    required super.identity,
  });
  factory AddEducationModel.fromEntity(AddEducationEntity entity) =>
      AddEducationModel(
          courseName: entity.courseName,
          userId: entity.userId,
          schoolName: entity.schoolName,
          degree: entity.degree,
          year: entity.year,
          identity: entity.identity);

  factory AddEducationModel.fromJson(Map<String, dynamic> json) {
    return AddEducationModel(
        userId: json['user_id'],
        schoolName: json['school_name'],
        courseName: json['course_name'],
        degree: json['degree'],
        year: json['year'],
        identity: json['identity']);
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'school_name': schoolName,
      'course_name': courseName,
      'degree': degree,
      'year': year,
      'identity': identity
    };
  }
}
