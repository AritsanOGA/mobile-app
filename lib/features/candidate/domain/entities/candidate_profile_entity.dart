import 'package:equatable/equatable.dart';

class CandidateProfileEntity extends Equatable {
  final String passport;
  final String resume;
  final ProfileEntity profiles;
  final List<EmployerFeedbackEntity> employerFeedback;
  final List<EmployerRatingEntity> employerRating;

  const CandidateProfileEntity({
    required this.passport,
    required this.resume,
    required this.profiles,
    required this.employerFeedback,
    required this.employerRating,
  });

  @override
  List<Object?> get props =>
      [passport, resume, profiles, employerFeedback, employerRating];
}

class ProfileEntity extends Equatable {
  final int? id;
  final int? hired;
  final DateTime? hiredDate;
  final int? whatsappNumber;
  final String? fullName;
  final String? email;
  final String? role;
  final String? isAdmin;
  final String? status;
  final int? featured;
  final String? resume;
  final dynamic profileImage;
  final String? gender;
  final dynamic about;
  final String? identity;
  final String? phone;
  final DateTime? dateOfBirth;
  final String? streetAddress;
  final String? city;
  final int? country;
  final String? companyName;
  final String? state;
  final String? locationAddress;
  final String? deliveryAddress;
  final String? businessCategory;
  final dynamic businessName;
  final dynamic facebook;
  final dynamic instagram;
  final String? workExperience;
  final dynamic websiteAddress;
  final String? agreementStatus;
  final dynamic serviceDescription;
  final String? availability;
  final dynamic verifyCode;
  final dynamic minAmount;
  final dynamic maxAmount;
  final dynamic compensationType;
  final dynamic jobPreference;
  final dynamic isVerified;
  final String? rating;
  final String? educationQualification;
  final String? employmentHistory;
  final String? passwordReset;
  final int? block;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? jobType;
  final String? package;
  final String? guarantorName;
  final String? guarantorAddress;
  final String? guarantorPhone;
  final String? guarantorEmail;
  final int? referredByLink;
  final String? referredByWho;
  final List<AwardsAndCertificateEntity> awardsAndCertificates;
  final List<ArtisanAssignedSkillEntity> artisanAssignedSkills;
  final List<AwardsAndCertificateEntity> education;
  final List<ExperienceEntity> experience;
  final List<CustomerRatingEntity>? customerRating;
  final List<SkillAssessmentEntity>? skillAssessmentAverage;

  const ProfileEntity({
    this.id,
    this.hired,
    this.hiredDate,
    this.whatsappNumber,
    this.fullName,
    this.email,
    this.role,
    this.isAdmin,
    this.status,
    this.featured,
    this.resume,
    this.profileImage,
    this.gender,
    this.about,
    this.identity,
    this.phone,
    this.dateOfBirth,
    this.streetAddress,
    this.city,
    this.country,
    this.companyName,
    this.state,
    this.locationAddress,
    this.deliveryAddress,
    this.businessCategory,
    this.businessName,
    this.facebook,
    this.instagram,
    this.workExperience,
    this.websiteAddress,
    this.agreementStatus,
    this.serviceDescription,
    this.availability,
    this.verifyCode,
    this.minAmount,
    this.maxAmount,
    this.compensationType,
    this.jobPreference,
    this.isVerified,
    this.rating,
    this.educationQualification,
    this.employmentHistory,
    this.passwordReset,
    this.block,
    this.createdAt,
    this.updatedAt,
    this.jobType,
    this.package,
    this.guarantorName,
    this.guarantorAddress,
    this.guarantorPhone,
    this.guarantorEmail,
    this.referredByLink,
    this.referredByWho,
    required this.awardsAndCertificates,
    required this.artisanAssignedSkills,
    required this.education,
    required this.experience,
    this.customerRating,
    this.skillAssessmentAverage,
  });

  @override
  List<Object?> get props => [
        id,
        hired,
        hiredDate,
        whatsappNumber,
        fullName,
        email,
        role,
        isAdmin,
        status,
        featured,
        resume,
        profileImage,
        gender,
        about,
        identity,
        phone,
        dateOfBirth,
        streetAddress,
        city,
        country,
        companyName,
        state,
        locationAddress,
        deliveryAddress,
        businessCategory,
        businessName,
        facebook,
        instagram,
        workExperience,
        websiteAddress,
        agreementStatus,
        serviceDescription,
        availability,
        verifyCode,
        minAmount,
        maxAmount,
        compensationType,
        jobPreference,
        isVerified,
        rating,
        educationQualification,
        employmentHistory,
        passwordReset,
        block,
        createdAt,
        updatedAt,
        jobType,
        package,
        guarantorName,
        guarantorAddress,
        guarantorPhone,
        guarantorEmail,
        referredByLink,
        referredByWho,
        awardsAndCertificates,
        artisanAssignedSkills,
        education,
        experience,
        customerRating,
        skillAssessmentAverage,
      ];
}

class AwardsAndCertificateEntity extends Equatable {
  final String? title;
  final String? desc;

  const AwardsAndCertificateEntity({
    this.title,
    this.desc,
  });

  @override
  List<Object?> get props => [title, desc];
}

class ArtisanAssignedSkillEntity extends Equatable {
  final String? skill;

  const ArtisanAssignedSkillEntity({this.skill});

  @override
  List<Object?> get props => [skill];
}

class ExperienceEntity extends Equatable {
  final String? title;
  final String? startYear;
  final String? endYear;
  final String? desc;
  final String? companyName;
  const ExperienceEntity(
      {this.title, this.startYear, this.endYear, this.desc, this.companyName});

  @override
  List<Object?> get props => [title, startYear, endYear, desc, companyName];
}

class CustomerRatingEntity extends Equatable {
  final String? fullName;
  final String? review;
  final String? userId;

  const CustomerRatingEntity({
    this.fullName,
    this.review,
    this.userId,
  });

  @override
  List<Object?> get props => [fullName, review, userId];
}

class SkillAssessmentEntity extends Equatable {
  final num? average;
  final int? total;
  final int? employerId;
  final int? noOfEmployer;
  final int? skillId;
  final String? skillType;

  const SkillAssessmentEntity(
      {this.average,
      this.total,
      this.employerId,
      this.noOfEmployer,
      this.skillId,
      this.skillType});

  @override
  List<Object?> get props =>
      [average, total, employerId, noOfEmployer, skillId, skillType];
}

class EducationEntity extends Equatable {
  final String? title;
  final String? desc;
  final String? purpose;
  final String? year;

  const EducationEntity({this.title, this.desc, this.purpose, this.year});

  @override
  List<Object?> get props => [title, desc, purpose, year];
}

class EmployerFeedbackEntity extends Equatable {
  final int id;
  final String fullName;
  final String email;
  final String review;
  final String userId;

  final DateTime createdAt;
  final DateTime updatedAt;

  const EmployerFeedbackEntity({
    required this.id,
    required this.fullName,
    required this.email,
    required this.review,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props =>
      [id, fullName, email, review, userId, createdAt, updatedAt];
}

class EmployerRatingEntity extends Equatable {
  final int id;
  final int userId;
  final String skills;

  final DateTime createdAt;
  final DateTime updatedAt;
  final List<SkillAssessmentEntity> employerRating;

  const EmployerRatingEntity({
    required this.id,
    required this.userId,
    required this.skills,
    required this.createdAt,
    required this.updatedAt,
    required this.employerRating,
  });

  @override
  List<Object?> get props =>
      [id, userId, skills, createdAt, updatedAt, employerRating];
}
// class SkillAssessmentEntity extends Equatable {
//   final int id;
//   final int userId;
//   final int skillId;
//   final double average;
//   final int noOfEmployers;
//   final int employerId;
//   final int total;
//   final DateTime createdAt;
//   final DateTime updatedAt;
//   final String skillType;

//   const SkillAssessmentEntity({
//     required this.id,
//     required this.userId,
//     required this.skillId,
//     required this.average,
//     required this.noOfEmployers,
//     required this.employerId,
//     required this.total,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.skillType,
//   });

//   @override
//   List<Object?> get props => [id, userId, skillId, average, noOfEmployers, employerId, total, createdAt, updatedAt, skillType];
// }
