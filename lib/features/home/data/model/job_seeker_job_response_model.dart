import 'package:artisan_oga/features/home/domain/entities/job_seeker_job_response_entity.dart';

class JobSeekerJobResponseModel extends JobSeekerJobResponseEntity {
  JobSeekerJobResponseModel({
    super.id,
    super.userId,
    super.jobTitle,
    super.jobDescription,
    super.basicSalary,
    super.workType,
    super.profileImage,
    super.industry,
    super.status,
  });

  factory JobSeekerJobResponseModel.fromJson(Map<String, dynamic> json) =>
      JobSeekerJobResponseModel(
        id: json["id"],
        userId: json["user_id"],
        jobTitle: json["job_title"],
        jobDescription: json["job_description"],
        basicSalary: json["basic_salary"],
        workType: json['work_type'],
        profileImage: json['profile_image'],
        industry: json["industry"],
        status: json["status"],
      );
}
