import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/entities/all_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllJobUseCase
    implements UseCase<List<AllJobResponseEntity>, NoParams> {
  GetAllJobUseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, List<AllJobResponseEntity>>> call(NoParams params) {
    return repository.getAllJobs();
  }
}
