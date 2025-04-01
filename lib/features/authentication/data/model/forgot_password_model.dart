import 'package:artisan_oga/features/authentication/domain/entities/forgot_password_entity.dart';

class ForgotPasswordModel extends ForgotPasswordEntity {
  const ForgotPasswordModel({
    required super.email,
  });

  factory ForgotPasswordModel.fromEntity(ForgotPasswordEntity entity) =>
      ForgotPasswordModel(
        email: entity.email,
      );

  Map<String, dynamic> toJson() => {
        'email': email,
      };
}
