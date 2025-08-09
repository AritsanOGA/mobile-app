import 'package:artisan_oga/features/candidate/domain/entities/get_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_work_photo_entity.dart';

class GetWorkPhotoModel extends GetWorkPhotoEntity {
  GetWorkPhotoModel({
    required super.id,
    required super.userId,
    required super.name,
    required super.photo,
    required super.identity,
  });
  factory GetWorkPhotoModel.fromEntity(GetWorkPhotoEntity entity) =>
      GetWorkPhotoModel(
        id: entity.id,
        name: entity.name,
        userId: entity.userId,
        photo: entity.photo,
        identity: entity.identity,
      );
  factory GetWorkPhotoModel.fromJson(Map<String, dynamic> json) {
    return GetWorkPhotoModel(
        id: json['id'],
        userId: json['user_id'],
        name: json['name'],
        photo: json['photos'],
        identity: json['identity']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'photos': photo,
      'identity': identity
    };
  }
}
