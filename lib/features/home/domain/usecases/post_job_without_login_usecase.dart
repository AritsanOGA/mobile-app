import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_without_login_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class PostJobWithoutLoginUsecase implements UseCase<bool, PostJobWithoutLoginEntity> {
  PostJobWithoutLoginUsecase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, bool>> call(PostJobWithoutLoginEntity params) {
    return repository.postJobWithoutLogin(params);
  }
}
