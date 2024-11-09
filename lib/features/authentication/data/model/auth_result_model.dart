

import 'package:artisan_oga/features/authentication/data/model/user_model.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';

class AuthResultModel extends AuthResultEntity {
  const AuthResultModel({
    super.success,
    required super.accessToken,
    required super.refreshToken,
    required UserModel user,
  }) : super(user: user);

  factory AuthResultModel.fromJson(Map<String, dynamic> json) =>
      AuthResultModel(
        success: json['success'] as bool?,
        accessToken: json['accessToken'] as String,
        refreshToken: json['refreshToken'] as String? ?? '',
        user: UserModel.fromJson(json['data']['user'] as Map<String, dynamic>),
      );

  factory AuthResultModel.fromEntity(AuthResultEntity entity) =>
      AuthResultModel(
        accessToken: entity.accessToken,
        refreshToken: entity.refreshToken,
        success: entity.success,
        user: UserModel.fromEntity(entity.user),
      );

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'refreshToken': refreshToken,
        'data': {
          'user': (user as UserModel).toJson(),
        },
      };
}