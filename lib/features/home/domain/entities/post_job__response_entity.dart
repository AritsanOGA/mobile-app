import 'package:equatable/equatable.dart';

class PostJobResponseEntity extends Equatable {
  final int? userId;
  final String? identity;
  final String? workType;
  final String? jobTitle;
  final String? jobStatus;
  final String? url;
  final String? jobDescription;
  final String? firstname;
  final String? email;
  final String? phone;
  final String? industry;
  final String? position;
  final String? hireType;
  final dynamic quantity;
  final dynamic businessCategoryName;
  final int? businessCategoryId;
  final dynamic ageRange;
  final int? minSalary;
  final int? maxSalary;
  final String? gender;
  final int? experience;
  final String? levelOfEducation;
  final String? itSkills;
  final String? basicSalary;
  final dynamic allowances;
  final String? state;
  final String? city;
  final int? status;
  final String? applicationDeadline;
  final String? officeAddress;
  final String? accommodationAvailable;
  final dynamic accommodationFor;
  final String? compensationType;
  final String? country;
  final int? recruiterId;
  final int? featured;
  final int? hiredCount;
  final String? commuteType;
  final DateTime? updatedAt;
  final DateTime? createdAt;
  final int? id;

  PostJobResponseEntity({
    this.userId,
    this.identity,
    this.workType,
    this.jobTitle,
    this.jobStatus,
    this.url,
    this.jobDescription,
    this.firstname,
    this.email,
    this.phone,
    this.industry,
    this.position,
    this.hireType,
    this.quantity,
    this.businessCategoryName,
    this.businessCategoryId,
    this.ageRange,
    this.minSalary,
    this.maxSalary,
    this.gender,
    this.experience,
    this.levelOfEducation,
    this.itSkills,
    this.basicSalary,
    this.allowances,
    this.state,
    this.city,
    this.status,
    this.applicationDeadline,
    this.officeAddress,
    this.accommodationAvailable,
    this.accommodationFor,
    this.compensationType,
    this.country,
    this.recruiterId,
    this.featured,
    this.hiredCount,
    this.commuteType,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        userId,
        identity,
        workType,
        jobTitle,
        jobStatus,
        url,
        jobDescription,
        firstname,
        email,
        phone,
        industry,
        position,
        hireType,
        quantity,
        businessCategoryName,
        businessCategoryId,
        ageRange,
        minSalary,
        maxSalary,
        gender,
        experience,
        levelOfEducation,
        itSkills,
        basicSalary,
        allowances,
        state,
        city,
        status,
        applicationDeadline,
        officeAddress,
        accommodationAvailable,
        accommodationFor,
        compensationType,
        country,
        recruiterId,
        featured,
        hiredCount,
        commuteType,
        updatedAt,
        createdAt,
        id,
      ];
}
