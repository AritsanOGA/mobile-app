import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterEmployerUseCase implements UseCase<bool, RegisterEmployerEntity> {
  RegisterEmployerUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(RegisterEmployerEntity params) {
    return repository.registerEmployer(params);
  }
}
