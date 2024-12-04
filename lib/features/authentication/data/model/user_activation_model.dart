import 'package:artisan_oga/features/authentication/domain/entities/user_activation_entity.dart';

class UserActivationModel extends UserActivationEntity {
  const UserActivationModel({super.token, super.expiresAt});

  factory UserActivationModel.fromJson(Map<String, dynamic> json) =>
      UserActivationModel(
        token: json['token'] as String,
        expiresAt: json['expiresAt'] as String,
      );
  factory UserActivationModel.fromEntity(UserActivationEntity entity) =>
      UserActivationModel(
        token: entity.token,
        expiresAt: entity.expiresAt,
      );

  Map<String, dynamic> toJson() => {
        'token': token,
        'expiresAt': expiresAt,
      };
}
