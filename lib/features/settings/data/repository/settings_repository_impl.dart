import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/extensions/extension.dart';
import 'package:artisan_oga/features/settings/data/data_source/settings_remote_data_source.dart';
import 'package:artisan_oga/features/settings/domain/entities/activities_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/change_password_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_employer_response_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:artisan_oga/features/settings/domain/entities/notification_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_employer_profile_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_constants/app_strings.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsRemoteDataSource settingsRemoteDataSource;

  SettingsRepositoryImpl({required this.settingsRemoteDataSource});
  @override
  Future<Either<Failure, bool>> changePassword(
      ChangePasswordEntity entity) async {
    try {
      final result = await settingsRemoteDataSource.changePassword(entity);
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
  Future<Either<Failure, GetEmployerResponseEntity>> getEmployerProfile() {
    return settingsRemoteDataSource.getEmployerProfile().makeRequest();
  }

  @override
  Future<Either<Failure, GetJobSeekerResponseEntity>> getJobSeekerProfile() {
    return settingsRemoteDataSource.getJobSeekerProfile().makeRequest();
  }

  @override
  Future<Either<Failure, bool>> updateEmployerProfile(
      UpdateEmployerProfileEntity entity) async {
    try {
      final result =
          await settingsRemoteDataSource.updateEmployerProfile(entity);
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
  Future<Either<Failure, bool>> updateJobSeekerProfile(
      UpdateJobSeekerProfileEntity entity) async {
    try {
      final result =
          await settingsRemoteDataSource.updateJobSeekerProfile(entity);
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
  Future<Either<Failure, List<NotificationEntity>>> getCandidateNotification() {
    return settingsRemoteDataSource.getJobSeekerNotification().makeRequest();
  }

  @override
  Future<Either<Failure, List<ActivitiesEntity>>> getActivities() {
    return settingsRemoteDataSource.getActivities().makeRequest();
  }
}
