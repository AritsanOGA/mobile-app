import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/home/domain/entities/all_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/job_seeker_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<FeaturedCandidatesEntity>>>
      getFeaturedCandidates();
  Future<Either<Failure, List<JobSeekerJobResponseEntity>>> getJobSeekerJobs();
  Future<Either<Failure, List<EmployerJobResponseEntity>>> getEmployerJob();
  Future<Either<Failure, List<FeaturedJobResponseEntity>>> getFeaturedJob();
  Future<Either<Failure, List<AllJobResponseEntity>>> getAllJobs();
  Future<Either<Failure, bool>> applyForJob(String id);
  Future<Either<Failure, bool>> postJob(PostJobEntity entity);
}
