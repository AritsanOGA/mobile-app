import 'package:artisan_oga/features/authentication/domain/entities/user_entity.dart';
import 'package:equatable/equatable.dart';


class AuthResultEntity extends Equatable {
  const AuthResultEntity({
    this.success,
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  });

  final bool? success;
  final String accessToken;
  final String refreshToken;
  final UserEntity user;

  @override
  List<Object?> get props => [
        success,
        accessToken,
        refreshToken,
        user,
      ];
}