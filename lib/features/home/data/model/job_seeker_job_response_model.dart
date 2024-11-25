import 'package:artisan_oga/features/home/domain/entities/job_seeker_job_response_entity.dart';

class JobSeekerJobResponseModel extends JobSeekerJobResponseEntity {
  JobSeekerJobResponseModel({required super.id, required super.name});

  factory JobSeekerJobResponseModel.fromJson(Map<String, dynamic> json) =>
      JobSeekerJobResponseModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
      );
}
