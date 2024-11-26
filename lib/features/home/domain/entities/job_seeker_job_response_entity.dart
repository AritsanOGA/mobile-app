import 'package:equatable/equatable.dart';

class JobSeekerJobResponseEntity extends Equatable {
  const JobSeekerJobResponseEntity({
    this.id,
    this.userId,
    this.jobTitle,
    this.jobDescription,
    this.basicSalary,
    this.industry,
    this.workType,
    this.profileImage,
    this.status,
  });

  final int? id;
  final int? userId;
  final String? jobTitle;
  final String? jobDescription;
  final String? basicSalary;
  final String? industry;
  final String? workType;
  final dynamic? profileImage;
  final String? status;

  @override
  List<Object?> get props => [
        id,
        userId,
        jobTitle,
        jobDescription,
        basicSalary,
        industry,
        profileImage,
        workType,
        status,
      ];
}
