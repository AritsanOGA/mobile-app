import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';

class GetUserDataUseCase implements UseCase<bool, NoParams> {
  GetUserDataUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return repository.getUserData();
  }
}
