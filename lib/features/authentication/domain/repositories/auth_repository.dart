import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/verify_code_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> login(LoginEntity param);
  Future<Either<Failure, bool>> registerEmployer(RegisterEmployerEntity param);
  Future<Either<Failure, bool>> registerJobSeeker(
      RegisterJobSeekerEntity param);
  Future<Either<Failure, bool>> getUserData();
  Future<Either<Failure, List<CountryResponseEntity>>> getCountries();
  Future<Either<Failure, List<StateResponseEntity>>> getState(String countryId);
  Future<Either<Failure, List<CategoryResponseEntity>>> getCategory();
  Future<Either<Failure, List<SkillResponseEntity>>> getSkill(
      String categoryId);
  Future<Either<Failure, bool>> verifyCode(VerifyCodeEntity param);
}
