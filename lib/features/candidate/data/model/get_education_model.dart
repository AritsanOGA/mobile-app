import 'package:artisan_oga/features/candidate/domain/entities/get_education_entity.dart';

class GetEducationModel extends GetEducationEntity {
  const GetEducationModel({
    required super.id,
    required super.userId,
    required super.title,
    required super.purpose,
    required super.description,
    required super.year,
  });
  factory GetEducationModel.fromEntity(GetEducationEntity entity) =>
      GetEducationModel(
        id: entity.id,
        purpose: entity.purpose,
        userId: entity.userId,
        title: entity.title,
        description: entity.description,
        year: entity.year,
      );

  factory GetEducationModel.fromJson(Map<String, dynamic> json) {
    return GetEducationModel(
      id: json['id'],
      userId: json['user_id'],
      title: json['title'],
      purpose: json['purpose'],
      description: json['desc'],
      year: json['year'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'title': title,
      'purpose': purpose,
      'desc': description,
      'year': year,
    };
  }
}
