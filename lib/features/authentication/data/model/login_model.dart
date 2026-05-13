import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity {
  const LoginModel({
    required super.email,
    required super.password,
    required super.token,
  });

  factory LoginModel.fromEntity(LoginEntity entity) => LoginModel(
      email: entity.email, password: entity.password, token: entity.token);

  Map<String, String> toJson() =>
      {'options': email, 'password': password, 'device_token': token};
}
