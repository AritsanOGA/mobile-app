
import 'package:artisan_oga/features/settings/domain/entities/activities_entity.dart';

class ActivitiesModel extends ActivitiesEntity {
  ActivitiesModel({
    required super.id,
    required super.employerId,
    required super.jobTitle,
    required super.industry,
    required super.jobUrl,
    required super.createdAt,
    required super.userId,
    required super.jobMergingId,
    required super.approved,
    required super.recruiterUrl,
    required super.name,
    required super.fullName,
    required super.recruiterId,
    required super.profileImage,
    required super.jobDescription,
    required super.basicSalary,
    required super.workType,
    required super.status,
  });

  // Convert JSON to Dart Object
  factory ActivitiesModel.fromJson(Map<String, dynamic> json) {
    return ActivitiesModel(
      id: json['id'] ,
      employerId: json['employer_id'],
      jobTitle: json['job_title'],
      industry: json['industry'],
      jobUrl: json['job_url'],
      createdAt: DateTime.parse(json['created_at']),
      userId: json['user_id'],
      jobMergingId: json['job_merging_id'],
      approved: json['approved'],
      recruiterUrl: json['recruiter_url'],
      name: json['name'],
      fullName: json['full_name'],
      recruiterId: json['recruiter_id'],
      profileImage: json['profile_image'],
      jobDescription: json['job_description'],
      basicSalary: json['basic_salary'],
      workType: json['work_type'],
      status: json['status'],
    );
  }

  // Convert Dart Object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'employer_id': employerId,
      'job_title': jobTitle,
      'industry': industry,
      'job_url': jobUrl,
      'created_at': createdAt?.toIso8601String(),
      'user_id': userId,
      'job_merging_id': jobMergingId,
      'approved': approved,
      'recruiter_url': recruiterUrl,
      'name': name,
      'full_name': fullName,
      'recruiter_id': recruiterId,
      'profile_image': profileImage,
      'job_description': jobDescription,
      'basic_salary': basicSalary,
      'work_type': workType,
      'status': status,
    };
  }
}
