import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/features/authentication/data/model/auth_result_model.dart';
import 'package:artisan_oga/features/authentication/data/model/category_model.dart';
import 'package:artisan_oga/features/authentication/data/model/country_model.dart';
import 'package:artisan_oga/features/authentication/data/model/login_model.dart';
import 'package:artisan_oga/features/authentication/data/model/register_employer_model.dart';
import 'package:artisan_oga/features/authentication/data/model/skill_response_model.dart';
import 'package:artisan_oga/features/authentication/data/model/state_response_model.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResultEntity> login(LoginEntity entity);
  Future<AuthResultEntity> registerEmployer(RegisterEmployerEntity entity);
  Future<AuthResultEntity> registerJobSeeker(RegisterJobSeekerEntity entity);

  Future<List<CountryResponseEntity>> getCountries();
  Future<List<StateResponseEntity>> getState(String countryId);
  Future<List<CategoryResponseEntity>> getCategory();
  Future<List<SkillResponseEntity>> getSkill(String categoryId);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this.api);
  final ApiService api;
  @override
  Future<AuthResultEntity> login(LoginEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.login,
      body: LoginModel.fromEntity(entity).toJson(),
    );
    return AuthResultModel.fromJson(result as Map<String, dynamic>);
  }

  @override
  Future<AuthResultEntity> registerEmployer(RegisterEmployerEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.signup,
      body: RegisterEmployerModel.fromEntity(entity).toJson(),
    );

    return AuthResultModel.fromJson(result as Map<String, dynamic>);
  }

  @override
  Future<List<CountryResponseEntity>> getCountries() async {
    final result = await api.get(
      url: AppApiEndpoint.getCountry,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => CountryResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
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
      url: AppApiEndpoint.getState,
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

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => SkillResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }
  
  @override
  Future<AuthResultEntity> registerJobSeeker(RegisterJobSeekerEntity entity) {
    // TODO: implement registerJobSeeker
    throw UnimplementedError();
  }
}
