import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class PostJobUseCase implements UseCase<bool, PostJobEntity> {
  PostJobUseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, bool>> call(PostJobEntity params) {
    return repository.postJob(params);
  }
}
