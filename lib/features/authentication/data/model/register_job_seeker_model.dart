import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:dio/dio.dart';

class RegisterJobSeekerModel extends RegisterJobSeekerEntity {
  const RegisterJobSeekerModel(
      {required super.email,
      required super.password,
      required super.confirmPassword,
      required super.country,
      required super.fullName,
      required super.companyName,
      required super.state,
      required super.city,
      required super.passport,
      required super.resume,
      required super.gender,
      required super.phoneNumber,
      required super.jobType,
      required super.guarantorName,
      required super.guarantorEmail,
      required super.residentialAddress,
      required super.yearsOfExperience,
      required super.describeYourRole,
      required super.category,
      required super.dateOFBirth,
      required super.skill,
      required super.role,
      required super.description,
      required super.startYear,
      required super.endYear,
      required super.schoolName,
      required super.educationalQualification,
      required super.certificateObtained,
      required super.graduationYear,
      required super.streetAddress,
      required super.courseName,
      required super.employmentHistory,
      required super.guarantorPhoneNumber,
      required super.yearOfGraduation});

  factory RegisterJobSeekerModel.fromEntity(RegisterJobSeekerEntity entity) =>
      RegisterJobSeekerModel(
          email: entity.email,
          password: entity.password,
          confirmPassword: entity.confirmPassword,
          country: entity.country,
          fullName: entity.fullName,
          companyName: entity.companyName,
          state: entity.state,
          city: entity.city,
          passport: entity.passport,
          resume: entity.resume,
          gender: entity.gender,
          phoneNumber: entity.phoneNumber,
          jobType: entity.jobType,
          guarantorName: entity.guarantorName,
          residentialAddress: entity.residentialAddress,
          guarantorEmail: entity.guarantorEmail,
          yearsOfExperience: entity.yearsOfExperience,
          describeYourRole: entity.describeYourRole,
          dateOFBirth: entity.dateOFBirth,
          role: entity.role,
          description: entity.description,
          schoolName: entity.schoolName,
          endYear: entity.endYear,
          skill: entity.skill,
          category: entity.category,
          startYear: entity.startYear,
          graduationYear: entity.graduationYear,
          certificateObtained: entity.certificateObtained,
          educationalQualification: entity.educationalQualification,
          streetAddress: entity.streetAddress,
          courseName: entity.courseName,
          employmentHistory: entity.employmentHistory,
          guarantorPhoneNumber: entity.guarantorPhoneNumber,
          yearOfGraduation: entity.yearOfGraduation);

  Future<FormData> toJson() async {
    final Map<String, dynamic> formDataMap = {
      'email': email,
      'password': password,
      'password_confirmation': confirmPassword,
      'country': country,
      'fullname': fullName,
      'states': state,
      'city': city,
      // 'passport': await MultipartFile.fromFile(
      //   "${passport?.path}",
      //   filename: "${passport?.path.split('/').last}",
      // ),
      // 'resume': resume?.path != null
      //     ? await MultipartFile.fromFile(
      //         "${resume?.path}",
      //         filename: "${resume?.path.split('/').last}",
      //       )
      //     : null,
      'gender': gender,
      'phone': phoneNumber,
      'DateOfBirth': dateOFBirth,
      'employment_history': employmentHistory,
      'company_name':
          employmentHistory == 'No Employment History' ? '' : companyName,
      'end_year': employmentHistory == 'No Employment History' ? '' : endYear,
      'start_year':
          employmentHistory == 'No Employment History' ? '' : startYear,
      'job_title': employmentHistory == 'No Employment History' ? '' : role,
      'job_description':
          employmentHistory == 'No Employment History' ? '' : description,
      'education_qualification': educationalQualification,
      'school_name':
          educationalQualification == 'No Education' ? '' : schoolName,
      'year_of_graduation':
          educationalQualification == 'No Education' ? '' : graduationYear,
      'award_title': educationalQualification == 'No Education' ||
              educationalQualification == 'GCE' ||
              educationalQualification == 'NECO' ||
              educationalQualification == 'WAEC'
          ? ''
          : '',
      'course_name': educationalQualification == 'No Education' ||
              educationalQualification == 'GCE' ||
              educationalQualification == 'NECO' ||
              educationalQualification == 'WAEC' ||
              educationalQualification == 'FLSC'
          ? ''
          : courseName,
      'categories': category,
      'artisan_skills': skill,
      'guarantor_name': guarantorName,
      'guarantor_email': guarantorEmail,
      'guarantor_address': residentialAddress,
      'job_type': jobType,
      'years_of_experience': yearsOfExperience,
      'StreetAddress': streetAddress,
      'service_description': describeYourRole,
      'guarantor_phone': guarantorPhoneNumber,
    };

    if (passport?.path != null) {
      formDataMap['passport'] = await MultipartFile.fromFile(
        "${resume?.path}",
        filename: "${resume?.path.split('/').last}",
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
