import 'dart:io';

import 'package:equatable/equatable.dart';

class UpdateJobSeekerProfileEntity extends Equatable {
  const UpdateJobSeekerProfileEntity(
      {required this.fullName,
      required this.state,
      required this.city,
      required this.resume,
      required this.email,
      required this.phoneNumber,
      required this.streetAddress,
      required this.yearsOfExperience,
      required this.guarantorPhoneNumber,
      required this.guarantorName,
      required this.guarantorEmail,
      required this.category,
      required this.identity,
      required this.countryId,
      required this.aboutMe,
      required this.compensationType,
      required this.maxAmount,
      required this.minAmount,
      required this.dateOFBirth,
      required this.jobPreference,
      required this.passport,
      required this.skill,
      required this.guarantorAddress});

  final String email;
  final String fullName;

  final String guarantorPhoneNumber;
  final String guarantorName;
  final String guarantorEmail;
  final String identity;
  final String streetAddress;
  final String yearsOfExperience;
  final String guarantorAddress;
  final String category;
  final String dateOFBirth;
  final List<String> skill;
  final String phoneNumber;
  final int countryId;
  final String state;
  final String city;
  final File? resume;
  final File? passport;
  final String jobPreference;
  final String aboutMe;
  final String maxAmount;
  final String minAmount;
  final String compensationType;

  UpdateJobSeekerProfileEntity copyWith(
      {String? email,
      String? fullName,
      String? guarantorName,
      String? guarantorPhoneNumber,
      String? guarantorEmail,
      String? streetAddress,
      String? yearsOfExperience,
      String? category,
      String? dateOFBirth,
      List<String>? skill,
      String? minAmount,
      String? maxAmount,
      String? compensationType,
      String? aboutMe,
      String? phoneNumber,
      int? countryId,
      String? state,
      String? city,
      String? identity,
      File? passport,
      String? jobPreference,
      File? resume,
      String? guarantorAddress}) {
    return UpdateJobSeekerProfileEntity(
        passport: passport ?? this.passport,
        jobPreference: jobPreference ?? this.jobPreference,
        guarantorPhoneNumber: guarantorPhoneNumber ?? this.guarantorPhoneNumber,
        fullName: fullName ?? this.fullName,
        identity: identity ?? this.identity,
        state: state ?? this.state,
        city: city ?? this.city,
        maxAmount: maxAmount ?? this.maxAmount,
        minAmount: minAmount ?? this.minAmount,
        resume: resume ?? this.resume,
        compensationType: compensationType ?? this.compensationType,
        countryId: countryId ?? this.countryId,
        email: email ?? this.email,
        aboutMe: aboutMe ?? this.aboutMe,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        guarantorName: guarantorName ?? this.guarantorName,
        guarantorEmail: guarantorEmail ?? this.guarantorEmail,
        streetAddress: streetAddress ?? this.streetAddress,
        yearsOfExperience: yearsOfExperience ?? this.yearsOfExperience,
        category: category ?? this.category,
        dateOFBirth: dateOFBirth ?? this.dateOFBirth,
        skill: skill ?? this.skill,
        guarantorAddress: guarantorAddress ?? this.guarantorAddress);
  }

  @override
  List<Object?> get props => [
        email,
        aboutMe,
        fullName,
        guarantorPhoneNumber,
        identity,
        guarantorName,
        guarantorEmail,
        compensationType,
        streetAddress,
        yearsOfExperience,
        category,
        dateOFBirth,
        skill,
        maxAmount,
        minAmount,
        phoneNumber,
        countryId,
        state,
        city,
        resume,
        guarantorAddress
      ];
}
