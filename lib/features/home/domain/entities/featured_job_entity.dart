import 'package:equatable/equatable.dart';

class FeaturedJobResponseEntity extends Equatable {
  const FeaturedJobResponseEntity({
    this.id,
    this.invoiceId,
    this.recruiterId,
    this.closed,
    this.identity,
    this.status,
    this.featured,
    this.compensationType,
    this.paymentId,
    this.paymentMethod,
    this.jobStatus,
    this.userId,
    this.jobTitle,
    this.jobDescription,
    this.url,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
    this.industry,
    this.position,
    this.hireType,
    this.quantity,
    this.businessCategoryName,
    this.businessCategoryId,
    this.ageRange,
    this.gender,
    this.experience,
    this.levelOfEducation,
    this.itSkills,
    this.basicSalary,
    this.minSalary,
    this.maxSalary,
    this.allowances,
    this.state,
    this.city,
    this.hiredCount,
    this.applicationDeadline,
    this.officeAddress,
    this.accommodationAvailable,
    this.accommodationFor,
    this.createdAt,
    this.updatedAt,
    this.topJobs,
    this.workType,
    this.country,
  });

  final int? id;
  final int? invoiceId;
  final int? recruiterId;
  final int? closed;
  final String? identity;
  final String? status;
  final int? featured;
  final String? compensationType;
  final int? paymentId;
  final String? paymentMethod;
  final String? jobStatus;
  final int? userId;
  final String? jobTitle;
  final String? jobDescription;
  final String? url;
  final String? firstname;
  final dynamic lastname;
  final String? email;
  final String? phone;
  final String? industry;
  final String? position;
  final String? hireType;
  final dynamic quantity;
  final dynamic businessCategoryName;
  final String? businessCategoryId;
  final dynamic ageRange;
  final String? gender;
  final dynamic experience;
  final String? levelOfEducation;
  final String? itSkills;
  final String? basicSalary;
  final int? minSalary;
  final int? maxSalary;
  final dynamic allowances;
  final String? state;
  final String? city;
  final int? hiredCount;
  final String? applicationDeadline;
  final String? officeAddress;
  final String? accommodationAvailable;
  final String? accommodationFor;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic topJobs;
  final String? workType;
  final dynamic country;

  @override
  List<Object?> get props => [
        id,
        invoiceId,
        recruiterId,
        closed,
        identity,
        status,
        featured,
        compensationType,
        paymentId,
        paymentMethod,
        jobStatus,
        userId,
        jobTitle,
        jobDescription,
        url,
        firstname,
        lastname,
        email,
        phone,
        industry,
        position,
        hireType,
        quantity,
        businessCategoryName,
        businessCategoryId,
        ageRange,
        gender,
        experience,
        levelOfEducation,
        itSkills,
        basicSalary,
        minSalary,
        maxSalary,
        allowances,
        state,
        city,
        hiredCount,
        applicationDeadline,
        officeAddress,
        accommodationAvailable,
        accommodationFor,
        createdAt,
        updatedAt,
        topJobs,
        workType,
        country,
      ];
}
