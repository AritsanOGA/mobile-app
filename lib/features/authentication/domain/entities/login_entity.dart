import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  const LoginEntity({
    required this.email,
    required this.password,
    required this. token
  });
  final String email;
  final String password;
  final String token;

  @override
  List<Object> get props => [
        email,
        password,token
      ];
}
