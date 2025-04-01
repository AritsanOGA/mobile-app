import 'package:artisan_oga/features/authentication/domain/entities/user_entity.dart';
import 'package:equatable/equatable.dart';

class AuthResultEntity extends Equatable {
  const AuthResultEntity({
    this.success,
    required this.user,
  });

  final String? success;

  final UserEntity user;

  @override
  List<Object?> get props => [
        success,
        user,
      ];
}
