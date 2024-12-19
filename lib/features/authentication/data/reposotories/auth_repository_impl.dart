import 'package:artisan_oga/core/app_constants/app_strings.dart';
import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/extensions/extension.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/data/data_source/auth_local_datasource.dart';
import 'package:artisan_oga/features/authentication/data/data_source/auth_remote_data_source.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/verify_code_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl(
      {required this.localDataSource, required this.authRemoteDataSource});
  @override
  Future<Either<Failure, bool>> getUserData() async {
    try {
      final result = await localDataSource.getUser();
      UserService().authData = result;
      return const Right(true);
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
  Future<Either<Failure, bool>> login(LoginEntity param) async {
    try {
      final result = await authRemoteDataSource.login(param);
      await localDataSource.cacheUser(result);
      UserService().authData = result;
      print('detail ${UserService().authData}');
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
  Future<Either<Failure, bool>> registerEmployer(
      RegisterEmployerEntity param) async {
    try {
      final result = await authRemoteDataSource.registerEmployer(param);
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
    return authRemoteDataSource.getCountries().makeRequest();
  }

  @override
  Future<Either<Failure, List<StateResponseEntity>>> getState(
      String countryId) {
    return authRemoteDataSource.getState(countryId).makeRequest();
  }

  @override
  Future<Either<Failure, List<CategoryResponseEntity>>> getCategory() {
    return authRemoteDataSource.getCategory().makeRequest();
  }

  @override
  Future<Either<Failure, List<SkillResponseEntity>>> getSkill(
      String categoryId) {
    return authRemoteDataSource.getSkill(categoryId).makeRequest();
  }

  @override
  Future<Either<Failure, bool>> registerJobSeeker(
      RegisterJobSeekerEntity param) async {
    try {
      final result = await authRemoteDataSource.registerJobSeeker(param);
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
  Future<Either<Failure, bool>> verifyCode(VerifyCodeEntity param) async {
    try {
      final result = await authRemoteDataSource.verifyCode(param);
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
