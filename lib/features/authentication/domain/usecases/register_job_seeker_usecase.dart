import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterJobSeekerUseCase
    implements UseCase<bool, RegisterJobSeekerEntity> {
  RegisterJobSeekerUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(RegisterJobSeekerEntity params) {
    return repository.RegisterJobSeeker(params);
  }
}
