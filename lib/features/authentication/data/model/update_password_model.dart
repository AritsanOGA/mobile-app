import 'package:artisan_oga/features/authentication/domain/entities/update_password_entity.dart';

class UpdatePasswordModel extends UpdatePasswordEntity {
  const UpdatePasswordModel(
      {
      // super.success,
      required super.email,
      required super.password,
      required super.confirmPassword});

  factory UpdatePasswordModel.fromEntity(UpdatePasswordEntity entity) =>
      UpdatePasswordModel(
          email: entity.email,
          password: entity.password,
          confirmPassword: entity.confirmPassword);

  Map<String, dynamic> toJson() =>
      {'email': email, 'passord': password, 'confirm_passord': confirmPassword};
}
