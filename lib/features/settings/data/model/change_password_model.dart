import 'package:artisan_oga/features/settings/domain/entities/change_password_entity.dart';

class ChangePasswordModel extends ChangePasswordEntity {
  ChangePasswordModel({
    required super.userId,
    required super.currentPassword,
    required super.newPassword,
    required super.confirmNewPassword,
  });

  factory ChangePasswordModel.fromEntity(ChangePasswordEntity entity) =>
      ChangePasswordModel(
          userId: entity.userId,
          confirmNewPassword: entity.confirmNewPassword,
          newPassword: entity.newPassword,
          currentPassword: entity.currentPassword);

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'current_password ': currentPassword,
        'new_password': newPassword,
        'confirm_password': confirmNewPassword
      };
}
