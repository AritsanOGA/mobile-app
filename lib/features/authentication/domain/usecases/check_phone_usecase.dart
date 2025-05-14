import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class CheckPhoneUsecase implements UseCase<bool, String> {
  CheckPhoneUsecase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, bool>> call(String phone) {
    return repository.checkPhone(phone);
  }
}
