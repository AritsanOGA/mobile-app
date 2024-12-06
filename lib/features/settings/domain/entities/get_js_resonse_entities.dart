import 'package:equatable/equatable.dart';

class GetJobSeekerResponseEntity extends Equatable {
  final int? id;
  final int? whatsappNumber;
  final String? fullName;
  final String? email;
  final String? role;
  final String? isAdmin;
  final String? status;
  final dynamic featured;
  final dynamic resume;
  final dynamic profileImage;
  final dynamic gender;
  final dynamic about;
  final String? identity;
  final String? phone;
  final dynamic dateOfBirth;
  final dynamic streetAddress;
  final String? city;
  final int? country;
  final String? companyName;
  final dynamic state;
  final dynamic locationAddress;
  final dynamic deliveryAddress;
  final dynamic businessCategory;
  final dynamic businessName;
  final dynamic facebook;
  final dynamic instagram;
  final dynamic workExperience;
  final dynamic websiteAddress;
  final dynamic agreementStatus;
  final dynamic serviceDescription;
  final String? availability;
  final String? verifyCode;
  final dynamic minAmount;
  final dynamic maxAmount;
  final dynamic compensationType;
  final dynamic jobPreference;
  final dynamic isVerified;
  final dynamic rating;
  final dynamic educationQualification;
  final dynamic employmentHistory;
  final dynamic passwordReset;
  final int? block;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic jobType;
  final dynamic package;
  final dynamic guarantorName;
  final dynamic guarantorAddress;
  final dynamic guarantorPhone;
  final dynamic guarantorEmail;
  final dynamic referredByLink;
  final dynamic referredByWho;

  const GetJobSeekerResponseEntity({
    this.id,
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
  });

  @override
  List<Object?> get props => [
        id,
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
      ];
}
