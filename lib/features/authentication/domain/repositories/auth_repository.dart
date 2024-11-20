import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/signup_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> login(LoginEntity param);
  Future<Either<Failure, bool>> signup(SignupEntity param);
  Future<Either<Failure, bool>> getUserData();
  Future<Either<Failure, List<CountryResponseEntity>>> getCountries();
  Future<Either<Failure, List<StateResponseEntity>>> getState(String countryId);
  Future<Either<Failure, List<CategoryResponseEntity>>> getCategory();
  Future<Either<Failure, List<SkillResponseEntity>>> getSkill(
      String categoryId);
}
