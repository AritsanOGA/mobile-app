import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/forgot_password_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class ForgotPasswordUseCase implements UseCase<bool, ForgotPasswordEntity> {
  ForgotPasswordUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(ForgotPasswordEntity params) {
    return repository.forgotPassword(params);
  }
}
