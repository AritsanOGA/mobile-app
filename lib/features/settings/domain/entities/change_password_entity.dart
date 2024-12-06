import 'package:equatable/equatable.dart';

class ChangePasswordEntity extends Equatable {
  final String userId;
  final String currentPassword;
  final String newPassword;
  final String confirmNewPassword;

  ChangePasswordEntity(
      {required this.userId,
      required this.currentPassword,
      required this.newPassword,
      required this.confirmNewPassword});

  @override
  List<Object?> get props =>
      [userId, confirmNewPassword, newPassword, currentPassword];
}
