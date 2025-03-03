import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';

class GetJobSeekerResponseModel extends GetJobSeekerResponseEntity {
  GetJobSeekerResponseModel({
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
    // required super.dateOfBirth,
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
    required List<AwardsAndCertificateModel> super.awardsAndCertificates,
    required List<ArtisanAssignedSkillModel> super.artisanAssignedSkills,
    required List<AwardsAndCertificateModel> super.education,
    required List<ExperienceModel> super.experience,
    required super.customerRating,
    required super.skillAssessmentAverage,
  });

  factory GetJobSeekerResponseModel.fromJson(Map<String, dynamic> json) {
    final awardList = json['awards_and_certificates'] != null
        ? List<Map<String, dynamic>>.from(
            json['awards_and_certificates'] as List,
          )
        : <Map<String, dynamic>>[];
    final skillList = json['artisan_assigned_skills'] != null
        ? List<Map<String, dynamic>>.from(
            json['artisan_assigned_skills'] as List,
          )
        : <Map<String, dynamic>>[];
    final educationList = json['education'] != null
        ? List<Map<String, dynamic>>.from(
            json['education'] as List,
          )
        : <Map<String, dynamic>>[];
    final experienceList = json['experience'] != null
        ? List<Map<String, dynamic>>.from(
            json['experience'] as List,
          )
        : <Map<String, dynamic>>[];
    return GetJobSeekerResponseModel(
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
      // dateOfBirth: json["date_of_birth"] == null
      //     ? null
      //     : DateTime.parse(json["date_of_birth"]),
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
      awardsAndCertificates: awardList.isNotEmpty
          ? awardList.map(AwardsAndCertificateModel.fromJson).toList().cast()
          : [],
      artisanAssignedSkills: skillList.isNotEmpty
          ? skillList.map(ArtisanAssignedSkillModel.fromJson).toList().cast()
          : [],
      education: educationList.isNotEmpty
          ? educationList
              .map(AwardsAndCertificateModel.fromJson)
              .toList()
              .cast()
          : [],
      experience: experienceList.isNotEmpty
          ? experienceList.map(ExperienceModel.fromJson).toList().cast()
          : [],
      customerRating: json["customer_rating"] == null
          ? []
          : List<dynamic>.from(json["customer_rating"]),
      skillAssessmentAverage: json["skill_assessment_average"] == null
          ? []
          : List<dynamic>.from(json["skill_assessment_average"]),
    );
  }

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

class AwardsAndCertificateModel extends AwardsAndCertificateEntity {
  AwardsAndCertificateModel({
    required super.title,
    required super.desc,
  });

  factory AwardsAndCertificateModel.fromEntity(
          AwardsAndCertificateEntity entity) =>
      AwardsAndCertificateModel(title: entity.title, desc: entity.desc);
  factory AwardsAndCertificateModel.fromJson(Map<String, dynamic> json) =>
      AwardsAndCertificateModel(
        title: json["title"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "desc": desc,
      };
}

class ArtisanAssignedSkillModel extends ArtisanAssignedSkillEntity {
  ArtisanAssignedSkillModel({
    required super.skill,
  });

  factory ArtisanAssignedSkillModel.fromEntity(
          ArtisanAssignedSkillEntity entity) =>
      ArtisanAssignedSkillModel(
        skill: entity.skill,
      );
  factory ArtisanAssignedSkillModel.fromJson(Map<String, dynamic> json) =>
      ArtisanAssignedSkillModel(
        skill: json["skills"],
      );

  Map<String, dynamic> toJson() => {
        "skills": skill,
      };
}

class ExperienceModel extends ExperienceEntity {
  ExperienceModel(
      {required super.title,
      required super.desc,
      required super.startYear,
      required super.endYear});

  factory ExperienceModel.fromEntity(ExperienceEntity entity) =>
      ExperienceModel(
        title: entity.title,
        desc: entity.desc,
        startYear: entity.startYear,
        endYear: entity.startYear,
      );
  factory ExperienceModel.fromJson(Map<String, dynamic> json) =>
      ExperienceModel(
          title: json["title"],
          desc: json['desc'],
          startYear: json['start_year'],
          endYear: json['end_year']);

  Map<String, dynamic> toJson() => {
        "title": title,
        "desc": desc,
        "start_year": startYear,
        "end_year": endYear
      };
}

class EducationModel extends EducationEntity {
  EducationModel(
      {required super.title,
      required super.desc,
      required super.purpose,
      required super.year});

  factory EducationModel.fromEntity(EducationEntity entity) => EducationModel(
        title: entity.title,
        desc: entity.desc,
        purpose: entity.purpose,
        year: entity.year,
      );
  factory EducationModel.fromJson(Map<String, dynamic> json) => EducationModel(
      title: json["title"],
      desc: json['desc'],
      purpose: json['purpose'],
      year: json['year']);

  Map<String, dynamic> toJson() =>
      {"title": title, "desc": desc, "purpose": purpose, "year": year};
}
