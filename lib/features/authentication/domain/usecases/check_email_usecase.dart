import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/update_password_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class CheckEmailUsecase implements UseCase<bool, String> {
  CheckEmailUsecase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(String  email) {
    return repository.checkEmail(email);
  }
}
