import 'package:equatable/equatable.dart';

class UserActivationEntity extends Equatable {
  const UserActivationEntity({this.token, this.expiresAt});

  final String? token;
  final String? expiresAt;

  @override
  List<Object?> get props => [
        token,
        expiresAt,
      ];
}