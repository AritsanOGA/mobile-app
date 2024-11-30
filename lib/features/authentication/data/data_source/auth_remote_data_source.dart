import 'dart:convert';

import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/data/model/auth_result_model.dart';
import 'package:artisan_oga/features/authentication/data/model/category_model.dart';
import 'package:artisan_oga/features/authentication/data/model/country_model.dart';
import 'package:artisan_oga/features/authentication/data/model/login_model.dart';
import 'package:artisan_oga/features/authentication/data/model/register_employer_model.dart';
import 'package:artisan_oga/features/authentication/data/model/register_job_seeker_model.dart';
import 'package:artisan_oga/features/authentication/data/model/skill_response_model.dart';
import 'package:artisan_oga/features/authentication/data/model/state_response_model.dart';
import 'package:artisan_oga/features/authentication/data/model/verify_code_model.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/verify_code_entity.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResultEntity> login(LoginEntity entity);
  Future<AuthResultEntity> refreshToken(LoginEntity entity);
  Future<bool> registerEmployer(RegisterEmployerEntity entity);
  Future<bool> registerJobSeeker(RegisterJobSeekerEntity entity);

  Future<List<CountryResponseEntity>> getCountries();
  Future<List<StateResponseEntity>> getState(String countryId);
  Future<List<CategoryResponseEntity>> getCategory();
  Future<List<SkillResponseEntity>> getSkill(String categoryId);
  Future<bool> verifyCode(VerifyCodeEntity entity);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this.api, this._userService);
  final ApiService api;
  final UserService _userService;

  @override
  Future<AuthResultEntity> login(LoginEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.login,
      body: LoginModel.fromEntity(entity).toJson(),
    );
    return AuthResultModel.fromJson(result as Map<String, dynamic>);
  }

  @override
  Future<bool> registerEmployer(RegisterEmployerEntity entity) async {
    print('bbbo ${RegisterEmployerModel.fromEntity(entity).toJson()}');
    final result = await api.post(
      url: AppApiEndpoint.employerSignup,
      body: await RegisterEmployerModel.fromEntity(entity).toJson(),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    // if (result['msg'] == 'Success') {
    //   return true;
    // }

    return true;

    //success;
    //AuthResultModel.fromJson(result as Map<String, dynamic>);
  }

  @override
  Future<List<CountryResponseEntity>> getCountries() async {
    final result = await api.get(
      url: AppApiEndpoint.getCountry,
    ) as Map<String, dynamic>;
    print('hi boo $result');

    try {
      final rawData = result['data'];
      if (rawData is List<dynamic>) {
        List<CountryResponseEntity> contrrr = rawData
            .where((item) => item is Map<String, dynamic>)
            .map(
              (e) => CountryResponseModel.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList();

        print('Parsed Countries: $contrrr');
        return contrrr;
      } else {
        throw Exception('Expected a list in result["data"], but got: $rawData');
      }
    } catch (e, stackTrace) {
      print('Error parsing countries: $e');
      print('StackTrace: $stackTrace');
      throw Exception('Failed to parse countries');
    }
  }

  @override
  Future<List<StateResponseEntity>> getState(String countryId) async {
    final result = await api.get(
        url: AppApiEndpoint.getState,
        queryParameters: {"country_id": countryId}) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => StateResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<List<CategoryResponseEntity>> getCategory() async {
    final result = await api.get(
      url: AppApiEndpoint.getCategories,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => CategoryResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<List<SkillResponseEntity>> getSkill(String categoryId) async {
    final result = await api.get(
        url: AppApiEndpoint.getSkills,
        queryParameters: {"category_id": categoryId}) as Map<String, dynamic>;
    print('categ ${categoryId}');
    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => SkillResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<bool> registerJobSeeker(RegisterJobSeekerEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.candidateSignup,
      body: await RegisterJobSeekerModel.fromEntity(entity).toJson(),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    return true;
  }

  @override
  Future<bool> verifyCode(VerifyCodeEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.verifyCode,
      body: VerifyCodeModel.fromEntity(entity).toJson(),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    return true;
  }

  @override
  Future<AuthResultEntity> refreshToken(LoginEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.refreshToken,
      body: LoginModel.fromEntity(entity).toJson(),
    );
    return AuthResultModel.fromJson(result as Map<String, dynamic>);
  }
}
