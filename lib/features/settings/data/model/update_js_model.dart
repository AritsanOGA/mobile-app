import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:dio/dio.dart';

class UpdateJobSeekerModel extends UpdateJobSeekerProfileEntity {
  const UpdateJobSeekerModel({
    required super.jobPreference,
    required super.passport,
    required super.fullName,
    required super.state,
    required super.city,
    required super.resume,
    required super.email,
    required super.phoneNumber,

    required super.streetAddress,
    required super.yearsOfExperience,
    required super.guarantorPhoneNumber,
    required super.guarantorName,
    required super.guarantorEmail,
    required super.guarantorAddress,
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

  factory UpdateJobSeekerModel.fromEntity(UpdateJobSeekerProfileEntity entity) {
    return UpdateJobSeekerModel(
        jobPreference: entity.jobPreference,
        passport: entity.passport,
        fullName: entity.fullName,
        email: entity.email,
      
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
        guarantorAddress: entity.guarantorAddress);
  }

  Future<FormData> toJson() async {
    final Map<String, dynamic> formDataMap = {
      'country_id': countryId,
      'full_name': fullName,
      'state': state,
      'city': city,
      'identity': identity,
      'phone': phoneNumber,
      'date_of_birth': dateOFBirth,
      'compensation_type': compensationType,
      'category': category,
      'guarantor_name': guarantorName,
      'guarantor_email': guarantorEmail,
      'guarantor_address': guarantorAddress,
      'job_preference': jobPreference,
      'years_of_experience': yearsOfExperience,
      'street_address': streetAddress,
      'about_me': aboutMe,
      "min_amount": minAmount,
      "max_amount": maxAmount,
      'guarantor_phone': guarantorPhoneNumber,
      "skills": skill
    };

    if (passport?.path != null) {
      formDataMap['profile_image'] = await MultipartFile.fromFile(
        "${passport?.path}",
        filename: "${passport?.path.split('/').last}",
      );
    }

    if (resume?.path != null) {
      formDataMap['resume'] = await MultipartFile.fromFile(
        "${resume?.path}",
        filename: "${resume?.path.split('/').last}",
      );
    }
    return FormData.fromMap(formDataMap);
  }
}
