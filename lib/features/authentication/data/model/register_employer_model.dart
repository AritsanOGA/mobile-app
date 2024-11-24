import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

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

  FormData toJson() => FormData.fromMap({
        'logo': MultipartFile.fromFile(
          "${companyLogo?.path}",
          filename: "${companyLogo?.path.split('/').last}",
        ),
        'email': email,
        'password': password,
        'confirm_password': password,
        'country': country,
        'fullName': fullName,
        'company_name': companyName,
        'state': state,
        'city': city,
        'gender': gender,
        'phone': phoneNumber,
        'business_name': companyName,
        'title': officeTitle,
      });
  @override
  String toString() {
    // TODO: implement toString
    return toJson().toString();
  }

  // Future<http.MultipartRequest> toMultipart() async {
  //   final request = http.MultipartRequest();

  //   request.fields.addAll({
  //     'email': email,
  //     'password': password,
  //     'confirm_password': password,
  //     'country': country,
  //     'fullName': fullName,
  //     'company_name': companyName,
  //     'state': state,
  //     'city': city,
  //     'gender': gender,
  //     'phone': phoneNumber,
  //     'business_name': companyName,
  //     'title': officeTitle
  //   });
  //   request.files.add(
  //       await http.MultipartFile.fromPath('logo', companyLogo?.path ?? ''));
  //   return request;
  // }
}
