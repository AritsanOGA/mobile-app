import 'package:artisan_oga/features/authentication/domain/entities/verify_code_entity.dart';

class VerifyCodeModel extends VerifyCodeEntity {
  const VerifyCodeModel({
    // super.success,
    required super.email,
    required super.code,
  });

  factory VerifyCodeModel.fromEntity(VerifyCodeEntity entity) =>
      VerifyCodeModel(email: entity.email, code: entity.code);

  Map<String, dynamic> toJson() => {'email': email, 'code': code};
}
