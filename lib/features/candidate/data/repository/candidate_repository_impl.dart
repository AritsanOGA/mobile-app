import 'package:artisan_oga/core/app_constants/app_strings.dart';
import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/extensions/extension.dart';
import 'package:artisan_oga/features/candidate/data/data_source/candidate_remote_source.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class CandidateRepositoryImpl implements CandidateRepository {
  final CandidateRemoteSource candidateRemoteSource;

  CandidateRepositoryImpl({required this.candidateRemoteSource});

  @override
  Future<Either<Failure, bool>> acceptCandidate(
      AcceptCandidateEntity entity) async {
    try {
      final result = await candidateRemoteSource.acceptCandidate(entity);
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
  Future<Either<Failure, List<GetAssignedApplicantsEntity>>>
      getAssignedCandidate(String jobId) async {
    return candidateRemoteSource.getAssignedCandidate(jobId).makeRequest();
  }

  @override
  Future<Either<Failure, bool>> rejectCandidate(
      AcceptCandidateEntity entity) async {
    try {
      final result = await candidateRemoteSource.rejectCandidate(entity);
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
}
