import 'package:artisan_oga/features/candidate/domain/entities/get_education_entity.dart';

class GetEducationModel extends GetEducationEntity {
  const GetEducationModel(
      {required super.id,
      required super.userId,
      required super.title,
      required super.purpose,
      
      required super.year,
      required super.identity,
      required super.degree});
  factory GetEducationModel.fromEntity(GetEducationEntity entity) =>
      GetEducationModel(
        degree: entity.degree,
        id: entity.id,
        purpose: entity.purpose,
        userId: entity.userId,
        title: entity.title,
      
        year: entity.year,
        identity: entity.identity,
      );

  factory GetEducationModel.fromJson(Map<String, dynamic> json) {
    return GetEducationModel(
        id: json['id'],
        degree: json['degree'],
        userId: json['user_id'],
        title: json['title'],
        purpose: json['purpose'],
        year: json['year'],
        identity: json['identity']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'degree': degree,
      'title': title,
      'purpose': purpose,
 
      'year': year,
      'identity': identity
    };
  }
}
