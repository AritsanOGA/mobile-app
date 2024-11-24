import 'dart:io';

import 'package:equatable/equatable.dart';

class RegisterEmployerEntity extends Equatable {
  const RegisterEmployerEntity(
      {required this.fullName,
      required this.officeTitle,
      required this.companyName,
      required this.state,
      required this.city,
      required this.companyLogo,
      required this.gender,
      required this.country,
      required this.confirmPassword,
      required this.email,
      required this.password,
      required this.phoneNumber});

  final String email;
  final String password;
  final String fullName;
  final String officeTitle;
  final String companyName;
  final String phoneNumber;
  final String country;
  final String state;
  final String city;
  final File? companyLogo;
  final String confirmPassword;

  final String gender;

  RegisterEmployerEntity copyWith({
    String? email,
    String? password,
    String? companyName,
    String? city,
    String? country,
    String? phoneNumber,
    String? comfirmPassword,
    String? officeTitle,
    String? state,
    String? gender,
    String? fullName,
    File? companyLogo,
  }) {
    return RegisterEmployerEntity(
      fullName: fullName ?? this.fullName,
      officeTitle: officeTitle ?? this.officeTitle,
      companyName: companyName ?? this.companyName,
      state: state ?? this.state,
      city: city ?? this.city,
      companyLogo: companyLogo ?? this.companyLogo,
      gender: gender ?? this.gender,
      country: country ?? this.country,
      confirmPassword: confirmPassword,
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        confirmPassword,
        country,
        fullName,
        officeTitle,
        companyLogo,
        companyName,
        gender,
        city,
        state,
        country,
        phoneNumber
      ];
}
