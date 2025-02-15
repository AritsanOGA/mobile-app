import 'dart:io';

import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';

class UpdateJobSeekerModel extends UpdateJobSeekerProfileEntity {
  const UpdateJobSeekerModel({
    required super.fullName,
    required super.state,
    required super.city,
    required super.resume,
    required super.email,
    required super.phoneNumber,
    required super.jobType,
    required super.streetAddress,
    required super.yearsOfExperience,
    required super.guarantorPhoneNumber,
    required super.guarantorName,
    required super.guarantorEmail,
    required super.category,
    required super.identity,
    required super.countryId,
    required super.aboutMe,
    required super.compensationType,
    required super.maxAmount,
    required super.minAmount,
    required super.dateOFBirth,
    required super.skill,
  });

  /// **Factory Method to Convert JSON to Model**
  factory UpdateJobSeekerModel.fromJson(Map<String, dynamic> json) {
    return UpdateJobSeekerModel(
      fullName: json["full_name"] ?? '',
      email: json["email"] ?? '',
      jobType: json["job_type"] ?? '',
      guarantorPhoneNumber: json["guarantor_phone_number"] ?? '',
      guarantorName: json["guarantor_name"] ?? '',
      guarantorEmail: json["guarantor_email"] ?? '',
      identity: json["identity"] ?? '',
      streetAddress: json["street_address"] ?? '',
      yearsOfExperience: json["years_of_experience"] ?? '',
      category: json["category"] ?? '',
      dateOFBirth: json["date_of_birth"] ?? '',
      skill: json["skill"] ?? '',
      phoneNumber: json["phone_number"] ?? '',
      countryId: json["country_id"] ?? '',
      state: json["state"] ?? '',
      city: json["city"] ?? '',
      aboutMe: json["about_me"] ?? '',
      minAmount: json["min_amount"] ?? '',
      maxAmount: json["max_amount"] ?? '',
      compensationType: json["compensation_type"] ?? '',
      resume: json["resume"] != null ? File(json["resume"]) : null,
    );
  }

  /// **Factory Method to Convert Entity to Model**
  factory UpdateJobSeekerModel.fromEntity(UpdateJobSeekerProfileEntity entity) {
    return UpdateJobSeekerModel(
      fullName: entity.fullName,
      email: entity.email,
      jobType: entity.jobType,
      guarantorPhoneNumber: entity.guarantorPhoneNumber,
      guarantorName: entity.guarantorName,
      guarantorEmail: entity.guarantorEmail,
      identity: entity.identity,
      streetAddress: entity.streetAddress,
      yearsOfExperience: entity.yearsOfExperience,
      category: entity.category,
      dateOFBirth: entity.dateOFBirth,
      skill: entity.skill,
      phoneNumber: entity.phoneNumber,
      countryId: entity.countryId,
      state: entity.state,
      city: entity.city,
      aboutMe: entity.aboutMe,
      minAmount: entity.minAmount,
      maxAmount: entity.maxAmount,
      compensationType: entity.compensationType,
      resume: entity.resume,
    );
  }

  /// **Convert Model to JSON for API Calls**
  Map<String, dynamic> toJson() {
    return {
      "full_name": fullName,
      "email": email,
      "job_type": jobType,
      "guarantor_phone_number": guarantorPhoneNumber,
      "guarantor_name": guarantorName,
      "guarantor_email": guarantorEmail,
      "identity": identity,
      "street_address": streetAddress,
      "years_of_experience": yearsOfExperience,
      "category": category,
      "date_of_birth": dateOFBirth,
      "skill": skill,
      "phone_number": phoneNumber,
      "country_id": countryId,
      "state": state,
      "city": city,
      "about_me": aboutMe,
      "min_amount": minAmount,
      "max_amount": maxAmount,
      "compensation_type": compensationType,
      "resume": resume?.path, // Convert file to string path
    };
  }
}
