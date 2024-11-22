import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';


class LoginModel extends LoginEntity {
  const LoginModel({
    required super.email,
    required super.password,
  });

  factory LoginModel.fromEntity(LoginEntity entity) => LoginModel(
        email: entity.email,
        password: entity.password,
      );

  Map<String, String> toJson() => {
        'options': email,
        'password': password,
      };
}