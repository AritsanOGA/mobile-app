import 'package:equatable/equatable.dart';

class CandidateProfileEntity extends Equatable {
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
  final List<dynamic>? awardsAndCertificates;
  final List<dynamic>? artisanAssignedSkills;
  final List<dynamic>? education;
  final List<dynamic>? experience;
  final List<dynamic>? customerRating;
  final List<dynamic>? skillAssessmentAverage;

  const CandidateProfileEntity({
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
    this.awardsAndCertificates,
    this.artisanAssignedSkills,
    this.education,
    this.experience,
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
