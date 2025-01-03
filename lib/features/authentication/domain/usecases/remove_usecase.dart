import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';

class RemoveUserDataUseCase implements UseCase<bool, NoParams> {
  RemoveUserDataUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return repository.removeUser();
  }
}
