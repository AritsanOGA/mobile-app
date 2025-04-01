import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetFeatureJobUseCase
    implements UseCase<List<FeaturedJobResponseEntity>, NoParams> {
  GetFeatureJobUseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, List<FeaturedJobResponseEntity>>> call(
      NoParams params) {
    return repository.getFeaturedJob();
  }
}
