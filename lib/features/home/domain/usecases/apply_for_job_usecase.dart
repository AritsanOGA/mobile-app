import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class ApplyForJobUseCase implements UseCase<bool, String> {
  ApplyForJobUseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, bool>> call(String params) {
    return repository.applyForJob(params);
  }
}
