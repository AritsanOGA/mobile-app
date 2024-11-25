import 'package:artisan_oga/features/home/domain/entities/all_job_response_entity.dart';

class AllJobResponseModel extends AllJobResponseEntity {
  AllJobResponseModel({required super.id, required super.name});

  factory AllJobResponseModel.fromJson(Map<String, dynamic> json) =>
      AllJobResponseModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
      );
}
