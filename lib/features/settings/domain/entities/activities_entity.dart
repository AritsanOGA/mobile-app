import 'package:equatable/equatable.dart';

class ActivitiesEntity extends Equatable {
  final int? id;
  final int? employerId;
  final String? jobTitle;
  final String? industry;
  final String? jobUrl;
  final DateTime? createdAt;
  final int? userId;
  final int? jobMergingId;
  final int? approved;
  final String? recruiterUrl;
  final String? name;
  final String? fullName;
  final int? recruiterId;
  final String? profileImage;
  final String? jobDescription;
  final String? basicSalary;
  final String? workType;
  final String? status;

  ActivitiesEntity({
     this.id,
     this.employerId,
     this.jobTitle,
     this.industry,
     this.jobUrl,
     this.createdAt,
     this.userId,
     this.jobMergingId,
     this.approved,
     this.recruiterUrl,
     this.name,
     this.fullName,
     this.recruiterId,
     this.profileImage,
     this.jobDescription,
     this.basicSalary,
     this.workType,
     this.status,
  });

  @override

  List<Object?> get props => [
        id,
        employerId,
        jobTitle,
        industry,
        jobUrl,
        createdAt,
        userId,
        jobMergingId,
        approved,
        recruiterUrl,
        name,
        fullName,
        recruiterId,
        profileImage,
        jobDescription,
        basicSalary,
        workType,
        status
      ];
}
