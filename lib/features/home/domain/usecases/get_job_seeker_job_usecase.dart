import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/entities/job_seeker_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetJobSeekerJobsUseCase
    implements UseCase<List<JobSeekerJobResponseEntity>, NoParams> {
  GetJobSeekerJobsUseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, List<JobSeekerJobResponseEntity>>> call(
      NoParams params) {
    return repository.getJobSeekerJobs();
  }
}
