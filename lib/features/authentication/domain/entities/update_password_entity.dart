import 'package:equatable/equatable.dart';

class UpdatePasswordEntity extends Equatable {
  const UpdatePasswordEntity(
      {required this.email,
      required this.password,
      required this.confirmPassword});

  final String email;

  final String password;
  final String confirmPassword;

  @override
  List<Object?> get props => [email, password, confirmPassword];
}
