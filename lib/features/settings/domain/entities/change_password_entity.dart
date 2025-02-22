import 'package:equatable/equatable.dart';

class ChangePasswordEntity extends Equatable {

  final String currentPassword;
  final String newPassword;
  final String confirmNewPassword;

  ChangePasswordEntity(
      {
      required this.currentPassword,
      required this.newPassword,
      required this.confirmNewPassword});

  @override
  List<Object?> get props =>
      [ confirmNewPassword, newPassword, currentPassword];
}
