import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class PostJobUseCase implements UseCase<bool, FeaturedCandidatesEntity> {
  PostJobUseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, bool>> call(FeaturedCandidatesEntity params) {
    return repository.postJob(params);
  }
}
