import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';

class FeaturedJobResponseModel extends FeaturedJobResponseEntity {
  FeaturedJobResponseModel({required super.id, required super.name});

  factory FeaturedJobResponseModel.fromJson(Map<String, dynamic> json) =>
      FeaturedJobResponseModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
      );
}
