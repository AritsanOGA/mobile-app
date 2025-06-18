import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/entities/edit_job_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class EditJobUseCase implements UseCase<bool, EditJobEntity> {
  EditJobUseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, bool>> call(EditJobEntity params) {
    return repository.editJob(params);
  }
}
