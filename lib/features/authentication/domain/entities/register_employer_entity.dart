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
      required this.isChecked,
      required this.gender,
      required this.country,
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
  final File companyLogo;
  final bool isChecked;
  final String gender;

  @override
  List<Object> get props => [
        email,
        password,
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
