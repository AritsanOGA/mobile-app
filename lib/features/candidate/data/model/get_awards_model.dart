import 'package:artisan_oga/features/candidate/domain/entities/get_awards_entity.dart';

class GetAwardModel extends GetAwardEntity {
  const GetAwardModel({
    required super.id,
    required super.userId,
    required super.title,
    required super.certificate,
    required super.identity,
  });
  factory GetAwardModel.fromEntity(GetAwardEntity entity) => GetAwardModel(
      id: entity.id,
      certificate: entity.certificate,
      userId: entity.userId,
      title: entity.title,
      identity: entity.identity);

  factory GetAwardModel.fromJson(Map<String, dynamic> json) {
    return GetAwardModel(
        id: json['id'],
        userId: json['user_id'],
        title: json['title'],
        certificate: json['certificate_url'],
        identity: json['identity']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'title': title,
      'certificate_url': certificate,
      'identity': identity
    };
  }
}
