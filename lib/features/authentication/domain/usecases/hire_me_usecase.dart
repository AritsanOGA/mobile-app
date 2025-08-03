import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/hire_me_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class HireMeUseCase implements UseCase<bool, HireMeEntity> {
  HireMeUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(HireMeEntity params) {
    return repository.hireMe(params);
  }
}
