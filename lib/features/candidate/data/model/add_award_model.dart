import 'package:artisan_oga/features/candidate/domain/entities/add_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_experience_entity.dart';

class AddAwardModel extends AddAwardEntity {
   AddAwardModel({
    required super.userId,
    required super.title,
    required super.role,
    required super.serviceDescription,
    required super.startYear,
    required super.yearEnd,
  });
  factory AddAwardModel.fromEntity(AddAwardEntity entity) =>
      AddAwardModel(
        serviceDescription: entity.serviceDescription,
        userId: entity.userId,
        role: entity.role,
        title: entity.title,
        startYear: entity.startYear,
        yearEnd: entity.yearEnd,
      );
  factory AddAwardModel.fromJson(Map<String, dynamic> json) {
    return AddAwardModel(
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
