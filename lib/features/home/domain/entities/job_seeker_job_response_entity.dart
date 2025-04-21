import 'package:equatable/equatable.dart';

class JobSeekerJobResponseEntity extends Equatable {
  const JobSeekerJobResponseEntity({
    this.id,
    this.userId,
    this.jobIdentity,
    this.identity,
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
  final String? jobIdentity;
  final String? identity;
  final String? jobTitle;
  final String? jobDescription;
  final String? basicSalary;
  final String? industry;
  final String? workType;
  final dynamic profileImage;
  final String? status;

  @override
  List<Object?> get props => [
        id,
        jobIdentity,
        identity,
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
