import 'package:artisan_oga/features/candidate/domain/entities/get_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_education_entity.dart';

class GetAwardModel extends GetAwardEntity {
  const GetAwardModel({
    required super.id,
    required super.userId,
    required super.title,
    required super.purpose,
    required super.description,
    required super.year,
    required super.identity,
  });
  factory GetAwardModel.fromEntity(GetEducationEntity entity) => GetAwardModel(
      id: entity.id,
      purpose: entity.purpose,
      userId: entity.userId,
      title: entity.title,
      description: entity.description,
      year: entity.year,
      identity: entity.identity);

  factory GetAwardModel.fromJson(Map<String, dynamic> json) {
    return GetAwardModel(
        id: json['id'],
        userId: json['user_id'],
        title: json['title'],
        purpose: json['purpose'],
        description: json['desc'],
        year: json['year'],
        identity: json['identity']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'title': title,
      'purpose': purpose,
      'desc': description,
      'year': year,
      'identity': identity
    };
  }
}
