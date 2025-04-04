import 'dart:developer';

import 'package:artisan_oga/core/app_constants/app_strings.dart';
import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/extensions/extension.dart';
import 'package:artisan_oga/features/candidate/data/data_source/candidate_remote_source.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_without_interview_entity.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
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
      log(e.toString());

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
      RejectCandidateEntity entity) async {
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

  @override
  Future<Either<Failure, CandidateProfileEntity>> getCandidateProfile(
      String identityId) async {
    return candidateRemoteSource.getCandidateProfile(identityId).makeRequest();
  }

  @override
  Future<Either<Failure, List<CandidateSkillEntity>>> getCandidateSkills(
      String identityId) async {
    return candidateRemoteSource.getCandidateSkills(identityId).makeRequest();
  }

  @override
  Future<Either<Failure, bool>> rejectCandidateWithoutInterview(
      RejectCandidateWithoutInterviewEntity entity) async {
    try {
      final result =
          await candidateRemoteSource.rejectCandidateWithoutInterview(entity);
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
