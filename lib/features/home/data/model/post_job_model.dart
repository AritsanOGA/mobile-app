import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';

class PostJobModel extends PostJobEntity {
  PostJobModel({required super.id, required super.name});

  factory PostJobModel.fromJson(Map<String, dynamic> json) => PostJobModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
      );
}
