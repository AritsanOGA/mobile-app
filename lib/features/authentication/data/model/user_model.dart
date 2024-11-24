
import 'package:artisan_oga/features/authentication/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    super.id,
    super.token,
    super.refreshToken,
    super.fullName,
    super.role,
    super.isAdmin,
    super.status,
    super.phoneNumber,
  }) : super();

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int?,
      token: json['token'] as String?,
      refreshToken: json['rtoken'] as String?,
      phoneNumber: json['phone'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      fullName: json['full_name'] as String?,
      isAdmin: json['is_admin'] as String?);

  factory UserModel.fromEntity(UserEntity entity) => UserModel(
        id: entity.id,
        token: entity.token,
        refreshToken: entity.refreshToken,
        phoneNumber: entity.phoneNumber,
        status: entity.status,
        fullName: entity.fullName,
        isAdmin: entity.isAdmin,
        role: entity.role,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'token': token,
        'rtoken': refreshToken,
        'phone': phoneNumber,
        'role': role,
        'status': status,
        'full_name': fullName,
        'is_admin': isAdmin,
      };
}
