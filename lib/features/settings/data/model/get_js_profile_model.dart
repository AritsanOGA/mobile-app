import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';

class GetJobSeekerResponseModel extends GetJobSeekerResponseEntity {
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

  GetJobSeekerResponseModel({
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

  factory GetJobSeekerResponseModel.fromJson(Map<String, dynamic> json) =>
      GetJobSeekerResponseModel(
        id: json["id"],
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
        dateOfBirth: json["date_of_birth"],
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
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "whatsapp_number": whatsappNumber,
        "full_name": fullName,
        "email": email,
        "role": role,
        "is_admin": isAdmin,
        "status": status,
        "featured": featured,
        "resume": resume,
        "profile_image": profileImage,
        "gender": gender,
        "about": about,
        "identity": identity,
        "phone": phone,
        "date_of_birth": dateOfBirth,
        "street_address": streetAddress,
        "city": city,
        "country": country,
        "company_name": companyName,
        "state": state,
        "location_address": locationAddress,
        "delivery_address": deliveryAddress,
        "business_category": businessCategory,
        "business_name": businessName,
        "facebook": facebook,
        "instagram": instagram,
        "work_experience": workExperience,
        "website_address": websiteAddress,
        "agreement_status": agreementStatus,
        "service_description": serviceDescription,
        "availability": availability,
        "verify_code": verifyCode,
        "min_amount": minAmount,
        "max_amount": maxAmount,
        "compensation_type": compensationType,
        "job_preference": jobPreference,
        "is_verified": isVerified,
        "rating": rating,
        "education_qualification": educationQualification,
        "employment_history": employmentHistory,
        "password_reset": passwordReset,
        "block": block,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "job_type": jobType,
        "package": package,
        "guarantor_name": guarantorName,
        "guarantor_address": guarantorAddress,
        "guarantor_phone": guarantorPhone,
        "guarantor_email": guarantorEmail,
        "referred_by_link": referredByLink,
        "referred_by_who": referredByWho,
      };
}
