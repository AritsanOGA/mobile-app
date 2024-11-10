import 'package:artisan_oga/features/authentication/domain/entities/signup_entity.dart';


class SignupModel extends SignupEntity {
  const SignupModel({
    required super.email,
    required super.password,
    required super.firstName,
    required super.lastName,
  });

  factory SignupModel.fromEntity(SignupEntity entity) => SignupModel(
        email: entity.email,
        password: entity.password,
        firstName: entity.firstName,
        lastName: entity.lastName,
      );

  Map<String, String> toJson() => {
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
      };
}