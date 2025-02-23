import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/verify_code_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class VerifyForgotPasswordUseCase implements UseCase<bool, VerifyCodeEntity> {
  VerifyForgotPasswordUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(VerifyCodeEntity params) {
    return repository.verifyForgotPasswordCode(params);
  }
}
