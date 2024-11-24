import 'package:equatable/equatable.dart';

class FeaturedCandidatesEntity extends Equatable {
  final int id;
  final int whatsappNumber;
  final String fullName;
  final String email;
  final String role;
  final String password;
  final String isAdmin;
  final String status;
  final dynamic resume;
  final String profileImage;
  final String gender;
  final dynamic about;
  final String identity;
  final String phone;
  final DateTime dateOfBirth;
  final String streetAddress;
  final String city;
  final int country;
  final String companyName;
  final String state;
  final dynamic locationAddress;
  final dynamic deliveryAddress;
  final String businessCategory;
  final dynamic businessName;
  final dynamic facebook;
  final dynamic instagram;
  final String workExperience;
  final dynamic websiteAddress;
  final dynamic agreementStatus;
  final String serviceDescription;
  final String availability;
  final String verifyCode;
  final String minAmount;
  final String maxAmount;
  final String compensationType;
  final String jobPreference;
  final dynamic isVerified;
  final dynamic rating;
  final String educationQualification;
  final String employmentHistory;
  final String passwordReset;
  final int block;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String jobType;
  final String package;
  final String guarantorName;
  final String guarantorAddress;
  final String guarantorPhone;
  final dynamic guarantorEmail;
  final int featured;
  final int referredByLink;
  final String referredByWho;

  FeaturedCandidatesEntity({
    required this.id,
    required this.whatsappNumber,
    required this.fullName,
    required this.email,
    required this.role,
    required this.password,
    required this.isAdmin,
    required this.status,
    required this.resume,
    required this.profileImage,
    required this.gender,
    required this.about,
    required this.identity,
    required this.phone,
    required this.dateOfBirth,
    required this.streetAddress,
    required this.city,
    required this.country,
    required this.companyName,
    required this.state,
    required this.locationAddress,
    required this.deliveryAddress,
    required this.businessCategory,
    required this.businessName,
    required this.facebook,
    required this.instagram,
    required this.workExperience,
    required this.websiteAddress,
    required this.agreementStatus,
    required this.serviceDescription,
    required this.availability,
    required this.verifyCode,
    required this.minAmount,
    required this.maxAmount,
    required this.compensationType,
    required this.jobPreference,
    required this.isVerified,
    required this.rating,
    required this.educationQualification,
    required this.employmentHistory,
    required this.passwordReset,
    required this.block,
    required this.createdAt,
    required this.updatedAt,
    required this.jobType,
    required this.package,
    required this.guarantorName,
    required this.guarantorAddress,
    required this.guarantorPhone,
    required this.guarantorEmail,
    required this.featured,
    required this.referredByLink,
    required this.referredByWho,
  });
  @override
  List<Object?> get props => [
        id,
      ];
}
