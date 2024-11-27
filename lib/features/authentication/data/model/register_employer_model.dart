import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:dio/dio.dart';

class RegisterEmployerModel extends RegisterEmployerEntity {
  const RegisterEmployerModel({
    required super.email,
    required super.password,
    required super.country,
    required super.fullName,
    required super.officeTitle,
    required super.companyName,
    required super.state,
    required super.city,
    required super.companyLogo,
    required super.gender,
    required super.phoneNumber,
    required super.confirmPassword,
  });

  factory RegisterEmployerModel.fromEntity(RegisterEmployerEntity entity) =>
      RegisterEmployerModel(
          confirmPassword: entity.confirmPassword,
          email: entity.email,
          password: entity.password,
          country: entity.country,
          fullName: entity.fullName,
          companyName: entity.companyName,
          state: entity.state,
          officeTitle: entity.officeTitle,
          city: entity.city,
          companyLogo: entity.companyLogo,
          gender: entity.gender,
          phoneNumber: entity.phoneNumber);

  Future<FormData> toJson() async => FormData.fromMap({
        'logo': await MultipartFile.fromFile(
          "${companyLogo?.path}",
          filename: "${companyLogo?.path.split('/').last}",
        ),
        'email': email,
        'password': password,
        'confirm_password': password,
        'country': country,
        'fullname': fullName,
        'company_name': companyName,
        'state': state,
        'city': city,
        'gender': gender,
        'phone': phoneNumber,
        'title': officeTitle,
      });
  @override
  String toString() {
    // TODO: implement toString
    return toJson().toString();
  }
}
