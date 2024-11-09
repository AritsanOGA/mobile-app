import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/signup_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase implements UseCase<bool, LoginEntity> {
  LoginUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(LoginEntity params) {
    return repository.login(params);
  }
}