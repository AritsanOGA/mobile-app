import 'package:artisan_oga/features/candidate/domain/entities/add_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_experience_entity.dart';

class AddAwardModel extends AddAwardEntity {
  AddAwardModel({
    required super.certificate,
    required super.title,
    required super.identity,
  });
  factory AddAwardModel.fromEntity(AddAwardEntity entity) => AddAwardModel(
        identity: entity.identity,
        certificate: entity.certificate,
        title: entity.title,
      );
  factory AddAwardModel.fromJson(Map<String, dynamic> json) {
    return AddAwardModel(
      certificate: json['certificate'],
      title: json['title'],
      identity: json['identity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'identity': identity,
      'title': title,
      'certificate': certificate,
    };
  }
}
