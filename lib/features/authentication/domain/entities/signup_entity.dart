import 'package:equatable/equatable.dart';

class SignupEntity extends Equatable {
  const SignupEntity({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  final String email;
  final String password;
  final String firstName;
  final String lastName;

  @override
  List<Object> get props => [
        email,
        password,
        firstName,
        lastName,
      ];
}
