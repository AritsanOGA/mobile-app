import 'dart:io';

import 'package:equatable/equatable.dart';

class RegisterJobSeekerEntity extends Equatable {
  const RegisterJobSeekerEntity({
    required this.fullName,
    required this.officeTitle,
    required this.companyName,
    required this.state,
    required this.city,
    required this.confirmPassword,
    required this.passport,
    required this.resume,
    required this.isChecked,
    required this.gender,
    required this.country,
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.jobType,
    required this.guarantorName,
    required this.guarantorEmail,
    required this.residentialAddress,
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
  });

  final String email;
  final String password;
  final String fullName;
  final String jobType;
  final String officeTitle;
  final String guarantorName;
  final String guarantorEmail;
  final String residentialAddress;
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
  final File passport;
  final File resume;
  final bool isChecked;
  final String gender;

  @override
  List<Object> get props => [
        email,
        password,
        fullName,
        jobType,
        officeTitle,
        guarantorName,
        guarantorEmail,
        residentialAddress,
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
        passport,
        resume,
        isChecked,
        gender,
      ];
}
