import 'dart:io';

import 'package:equatable/equatable.dart';

class RegisterJobSeekerEntity extends Equatable {
  const RegisterJobSeekerEntity(
      {required this.fullName,
      required this.companyName,
      required this.state,
      required this.city,
      required this.confirmPassword,
      required this.passport,
      required this.resume,
      required this.gender,
      required this.country,
      required this.email,
      required this.password,
      required this.phoneNumber,
      required this.jobType,
      required this.guarantorName,
      required this.guarantorEmail,
      required this.residentialAddress,
      required this.streetAddress,
      required this.yearsOfExperience,
      required this.describeYourRole,
      required this.category,
      required this.dateOFBirth,
      required this.skill,
      required this.role,
      required this.description,
      required this.startYear,
      required this.endYear,
      required this.schoolName,
      required this.educationalQualification,
      required this.certificateObtained,
      required this.graduationYear,
      required this.courseName,
      required this.employmentHistory});

  final String email;
  final String password;
  final String fullName;
  final String jobType;

  final String guarantorName;
  final String guarantorEmail;
  final String residentialAddress;
  final String streetAddress;
  final String yearsOfExperience;
  final String describeYourRole;
  final String category;
  final String dateOFBirth;
  final String skill;
  final String role;
  final String description;
  final String startYear;
  final String endYear;
  final String schoolName;
  final String educationalQualification;
  final String certificateObtained;
  final String graduationYear;
  final String companyName;
  final String phoneNumber;
  final String country;
  final String state;
  final String city;
  final String confirmPassword;
  final File? passport;
  final File? resume;
  final String gender;
  final String courseName;
  final String employmentHistory;

  RegisterJobSeekerEntity copyWith({
    String? email,
    String? password,
    String? fullName,
    String? jobType,
    String? guarantorName,
    String? guarantorEmail,
    String? residentialAddress,
    String? streetAddress,
    String? yearsOfExperience,
    String? describeYourRole,
    String? category,
    String? dateOFBirth,
    String? skill,
    String? role,
    String? description,
    String? startYear,
    String? endYear,
    String? schoolName,
    String? educationalQualification,
    String? certificateObtained,
    String? graduationYear,
    String? companyName,
    String? phoneNumber,
    String? country,
    String? state,
    String? city,
    String? confirmPassword,
    File? passport,
    File? resume,
    String? gender,
    String? courseName,
    String? employmentHistory,
  }) {
    return RegisterJobSeekerEntity(
        fullName: fullName ?? this.fullName,
        companyName: companyName ?? this.companyName,
        state: state ?? this.state,
        city: city ?? this.city,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        passport: passport ?? this.passport,
        resume: resume ?? this.resume,
        gender: gender ?? this.gender,
        country: country ?? this.country,
        email: email ?? this.email,
        password: password ?? this.password,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        jobType: jobType ?? this.jobType,
        guarantorName: guarantorName ?? this.courseName,
        guarantorEmail: guarantorEmail ?? this.guarantorEmail,
        residentialAddress: residentialAddress ?? this.residentialAddress,
        streetAddress: streetAddress ?? this.streetAddress,
        yearsOfExperience: yearsOfExperience ?? this.yearsOfExperience,
        describeYourRole: describeYourRole ?? this.describeYourRole,
        category: category ?? this.category,
        dateOFBirth: dateOFBirth ?? this.dateOFBirth,
        skill: skill ?? this.skill,
        role: role ?? this.role,
        description: description ?? this.description,
        startYear: startYear ?? this.startYear,
        endYear: endYear ?? this.endYear,
        schoolName: schoolName ?? this.schoolName,
        educationalQualification:
            educationalQualification ?? this.educationalQualification,
        certificateObtained: certificateObtained ?? this.certificateObtained,
        graduationYear: graduationYear ?? this.graduationYear,
        courseName: courseName ?? this.courseName,
        employmentHistory: employmentHistory ?? this.employmentHistory);
  }

  @override
  List<Object> get props => [
        email,
        password,
        fullName,
        jobType,
        guarantorName,
        guarantorEmail,
        residentialAddress,
        streetAddress,
        yearsOfExperience,
        describeYourRole,
        category,
        dateOFBirth,
        skill,
        role,
        description,
        startYear,
        endYear,
        schoolName,
        educationalQualification,
        certificateObtained,
        graduationYear,
        companyName,
        phoneNumber,
        country,
        state,
        city,
        confirmPassword,
        passport!,
        resume!,
        gender,
        courseName,
        employmentHistory
      ];
}
