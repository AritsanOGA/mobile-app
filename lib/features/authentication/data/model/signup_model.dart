import 'package:artisan_oga/features/authentication/domain/entities/signup_entity.dart';

class SignupModel extends SignupEntity {
  const SignupModel({
    required super.email,
    required super.password,
    required super.country,
    required super.fullName,
    required super.officeTitle,
    required super.companyName,
    required super.state,
    required super.city,
    required super.companyLogo,
    required super.isChecked,
    required super.gender,
    required super.phoneNumber,
  });

  factory SignupModel.fromEntity(SignupEntity entity) => SignupModel(
      email: entity.email,
      password: entity.password,
      country: entity.country,
      fullName: entity.fullName,
      companyName: entity.companyName,
      state: entity.state,
      isChecked: entity.isChecked,
      officeTitle: entity.officeTitle,
      city: entity.city,
      companyLogo: entity.companyLogo,
      gender: entity.gender,
      phoneNumber: entity.phoneNumber);

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
        'country': country,
        'fullName': fullName,
        'companyName': companyName,
        'state': state,
        'isChecked': isChecked,
        'officeTitle': officeTitle,
        'city': city,
        'companyLogo': companyLogo,
        'gender': gender,
        'phoneNumber': phoneNumber
      };
}
