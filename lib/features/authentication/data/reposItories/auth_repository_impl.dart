import 'package:artisan_oga/core/app_constants/app_strings.dart';
import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/extensions/extension.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/data/data_source/auth_local_datasource.dart';
import 'package:artisan_oga/features/authentication/data/data_source/auth_remote_data_source.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/forgot_password_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_data_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_details_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/update_password_entity.dart';
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
  Future<Either<Failure, AuthResultEntity>> login(LoginEntity param) async {
    try {
      final result = await authRemoteDataSource.login(param);
      await localDataSource.cacheUser(result);
      UserService().authData = result;
      print('detail ${UserService().authData}');
      return Right(result);
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

  @override
  Future<Either<Failure, bool>> removeUser() async {
    try {
      final result = await localDataSource.removeUser();
      print('print${result}');
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
  Future<Either<Failure, bool>> forgotPassword(
      ForgotPasswordEntity param) async {
    try {
      final result = await authRemoteDataSource.forgotPassword(param);
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
  Future<Either<Failure, bool>> updatePassword(
      UpdatePasswordEntity param) async {
    try {
      final result = await authRemoteDataSource.updatePassword(param);
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
  Future<Either<Failure, bool>> verifyForgotPasswordCode(
      VerifyCodeEntity param) async {
    try {
      final result = await authRemoteDataSource.verifyForgotPasswordCode(param);

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
  Future<Either<Failure, List<SearchJobEntity>>> searchJob(
      SearchJobDataEntity entity) {
    return authRemoteDataSource.searchJobs(entity).makeRequest();
  }

  @override
  Future<Either<Failure, SearchJobDetailsResultEntity>> searchJobDetail(
      String jobId) {
    return authRemoteDataSource.searchJobDetails(jobId).makeRequest();
  }

  @override
  Future<Either<Failure, bool>> checkEmail(String email) async {
    return authRemoteDataSource.checkEmail(email).makeRequest();
  }

  @override
  Future<Either<Failure, bool>> checkPhone(String phone) {
    return authRemoteDataSource.checkPhone(phone).makeRequest();
  }
}
