import 'package:artisan_oga/features/authentication/data/model/user_model.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';

class AuthResultModel extends AuthResultEntity {
  const AuthResultModel({
    // super.success,
    required super.success,
    required UserModel user,
  }) : super(user: user);

  factory AuthResultModel.fromJson(Map<String, dynamic> json) =>
      AuthResultModel(
        success: json['msg'] as String?,
        user: UserModel.fromJson(json['data'] as Map<String, dynamic>),
      );

  factory AuthResultModel.fromEntity(AuthResultEntity entity) =>
      AuthResultModel(
        success: entity.success,
        user: UserModel.fromEntity(entity.user),
      );

  Map<String, dynamic> toJson() => {
        'msg': success,
        'data': (user as UserModel).toJson(),
      };
}
