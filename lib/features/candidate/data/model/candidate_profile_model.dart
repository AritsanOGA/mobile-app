import 'dart:convert';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:equatable/equatable.dart';

class CandidateProfileModel extends CandidateProfileEntity {
  const CandidateProfileModel({
    required super.id,
    required super.hired,
    required super.hiredDate,
    required super.whatsappNumber,
    required super.fullName,
    required super.email,
    required super.role,
    required super.isAdmin,
    required super.status,
    required super.featured,
    required super.resume,
    required super.profileImage,
    required super.gender,
    required super.about,
    required super.identity,
    required super.phone,
    required super.dateOfBirth,
    required super.streetAddress,
    required super.city,
    required super.country,
    required super.companyName,
    required super.state,
    required super.locationAddress,
    required super.deliveryAddress,
    required super.businessCategory,
    required super.businessName,
    required super.facebook,
    required super.instagram,
    required super.workExperience,
    required super.websiteAddress,
    required super.agreementStatus,
    required super.serviceDescription,
    required super.availability,
    required super.verifyCode,
    required super.minAmount,
    required super.maxAmount,
    required super.compensationType,
    required super.jobPreference,
    required super.isVerified,
    required super.rating,
    required super.educationQualification,
    required super.employmentHistory,
    required super.passwordReset,
    required super.block,
    required super.createdAt,
    required super.updatedAt,
    required super.jobType,
    required super.package,
    required super.guarantorName,
    required super.guarantorAddress,
    required super.guarantorPhone,
    required super.guarantorEmail,
    required super.referredByLink,
    required super.referredByWho,
    required super.awardsAndCertificates,
    required super.artisanAssignedSkills,
    required super.education,
    required super.experience,
    required super.customerRating,
    required super.skillAssessmentAverage,
  });

  factory CandidateProfileModel.fromJson(Map<String, dynamic> json) =>
      CandidateProfileModel(
        id: json["id"],
        hired: json["hired"],
        hiredDate: json["hired_date"] == null
            ? null
            : DateTime.parse(json["hired_date"]),
        whatsappNumber: json["whatsapp_number"],
        fullName: json["full_name"],
        email: json["email"],
        role: json["role"],
        isAdmin: json["is_admin"],
        status: json["status"],
        featured: json["featured"],
        resume: json["resume"],
        profileImage: json["profile_image"],
        gender: json["gender"],
        about: json["about"],
        identity: json["identity"],
        phone: json["phone"],
        dateOfBirth: json["date_of_birth"] == null
            ? null
            : DateTime.parse(json["date_of_birth"]),
        streetAddress: json["street_address"],
        city: json["city"],
        country: json["country"],
        companyName: json["company_name"],
        state: json["state"],
        locationAddress: json["location_address"],
        deliveryAddress: json["delivery_address"],
        businessCategory: json["business_category"],
        businessName: json["business_name"],
        facebook: json["facebook"],
        instagram: json["instagram"],
        workExperience: json["work_experience"],
        websiteAddress: json["website_address"],
        agreementStatus: json["agreement_status"],
        serviceDescription: json["service_description"],
        availability: json["availability"],
        verifyCode: json["verify_code"],
        minAmount: json["min_amount"],
        maxAmount: json["max_amount"],
        compensationType: json["compensation_type"],
        jobPreference: json["job_preference"],
        isVerified: json["is_verified"],
        rating: json["rating"],
        educationQualification: json["education_qualification"],
        employmentHistory: json["employment_history"],
        passwordReset: json["password_reset"],
        block: json["block"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        jobType: json["job_type"],
        package: json["package"],
        guarantorName: json["guarantor_name"],
        guarantorAddress: json["guarantor_address"],
        guarantorPhone: json["guarantor_phone"],
        guarantorEmail: json["guarantor_email"],
        referredByLink: json["referred_by_link"],
        referredByWho: json["referred_by_who"],
        awardsAndCertificates: json["awards_and_certificates"] == null
            ? []
            : List<dynamic>.from(json["awards_and_certificates"]),
        artisanAssignedSkills: json["artisan_assigned_skills"] == null
            ? []
            : List<dynamic>.from(json["artisan_assigned_skills"]),
        education: json["education"] == null
            ? []
            : List<dynamic>.from(json["education"]),
        experience: json["experience"] == null
            ? []
            : List<dynamic>.from(json["experience"]),
        customerRating: json["customer_rating"] == null
            ? []
            : List<dynamic>.from(json["customer_rating"]),
        skillAssessmentAverage: json["skill_assessment_average"] == null
            ? []
            : List<dynamic>.from(json["skill_assessment_average"]),
      );
}
