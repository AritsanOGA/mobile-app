import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';

class FeaturedCandidateModel extends FeaturedCandidatesEntity {
  FeaturedCandidateModel({
    required super.id,
    required super.role,
    required super.fullName,
    required super.availability,
    required super.workExperience,
    required super.profileImage,
    required super.city,
  });
  // factory RegisterJobSeekerModel.fromEntity(RegisterJobSeekerEntity entity) =>
  //     RegisterJobSeekerModel(
  //       email: entity.email,
  //       password: entity.password,
  //       confirmPassword: entity.confirmPassword,
  //       country: entity.country,
  //       fullName: entity.fullName,
  //       companyName: entity.companyName,
  //       state: entity.state,
  //       city: entity.city,
  //       passport: entity.passport,
  //       resume: entity.resume,
  //       gender: entity.gender,
  //       phoneNumber: entity.phoneNumber,
  //       jobType: entity.jobType,
  //       guarantorName: entity.guarantorName,
  //       residentialAddress: entity.residentialAddress,
  //       guarantorEmail: entity.guarantorEmail,
  //       yearsOfExperience: entity.yearsOfExperience,
  //       describeYourRole: entity.describeYourRole,
  //       dateOFBirth: entity.dateOFBirth,
  //       role: entity.role,
  //       description: entity.description,
  //       schoolName: entity.schoolName,
  //       endYear: entity.endYear,
  //       skill: entity.skill,
  //       category: entity.category,
  //       startYear: entity.startYear,
  //       graduationYear: entity.graduationYear,
  //       certificateObtained: entity.certificateObtained,
  //       educationalQualification: entity.educationalQualification,
  //       streetAddress: entity.streetAddress,
  //       courseName: entity.courseName,
  //       employmentHistory: entity.employmentHistory,
  //     );

  factory FeaturedCandidateModel.fromJson(Map<String, dynamic> json) =>
      FeaturedCandidateModel(
        id: json["id"] ?? 0,
        role: json["role"] ?? '',
        fullName: json["full_name"] ?? '',
        availability: json["availability"] ?? '',
        workExperience: json["work_experience"] ?? '',
        profileImage: json["profile_image"] ?? '',
        city: json["city"] ?? '',
      );
}
