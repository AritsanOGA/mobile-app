import 'package:artisan_oga/core/app_constants/app_strings.dart';
import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/extensions/extension.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/home/data/data_source/home_remote_data_source.dart';
import 'package:artisan_oga/features/home/domain/entities/all_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/edit_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/job_seeker_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl({
    required this.homeRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<FeaturedCandidatesEntity>>>
      getFeaturedCandidates() {
    return homeRemoteDataSource.getFeaturedCandidates().makeRequest();
  }

  @override
  Future<Either<Failure, bool>> applyForJob(String id) async {
    try {
      final result = await homeRemoteDataSource.applyForJob(id);
      // await localDataSource.cacheUser(result);
      // UserService().authData = result;
      return const Right(true);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on CachedException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      debugPrint(e.toString());
      return const Left(
        ServerFailure(
          message: AppStrings.genericErrorMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<AllJobResponseEntity>>> getAllJobs() {
    return homeRemoteDataSource.getAllJobs().makeRequest();
  }

  @override
  Future<Either<Failure, List<EmployerJobResponseEntity>>> getEmployerJob() {
    return homeRemoteDataSource.getEmployerJob().makeRequest();
  }

  @override
  Future<Either<Failure, List<FeaturedJobResponseEntity>>> getFeaturedJob() {
    return homeRemoteDataSource.getFeaturedJob().makeRequest();
  }

  @override
  Future<Either<Failure, List<JobSeekerJobResponseEntity>>> getJobSeekerJobs() {
    return homeRemoteDataSource.getJobSeekerJobs().makeRequest();
  }

  @override
  Future<Either<Failure, bool>> postJob(PostJobEntity entity) async {
    try {
      final result = await homeRemoteDataSource.postJob(entity);
      // await localDataSource.cacheUser(result);
      // UserService().authData = result;
      return const Right(true);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on CachedException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      debugPrint(e.toString());
      return const Left(
        ServerFailure(
          message: AppStrings.genericErrorMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<CountryResponseEntity>>> getCountries() {
    return homeRemoteDataSource.getCountries().makeRequest();
  }

  @override
  Future<Either<Failure, List<StateResponseEntity>>> getState(
      String countryId) {
    return homeRemoteDataSource.getState(countryId).makeRequest();
  }

  @override
  Future<Either<Failure, List<CategoryResponseEntity>>> getCategory() {
    return homeRemoteDataSource.getCategory().makeRequest();
  }

  @override
  Future<Either<Failure, List<SkillResponseEntity>>> getSkill(
      String categoryId) {
    return homeRemoteDataSource.getSkill(categoryId).makeRequest();
  }

  @override
  Future<Either<Failure, bool>> editJob(EditJobEntity entity) {
    return homeRemoteDataSource.editJob(entity).makeRequest();
  }
}
