import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/features/authentication/data/model/auth_result_model.dart';
import 'package:artisan_oga/features/authentication/data/model/country_model.dart';
import 'package:artisan_oga/features/authentication/data/model/login_model.dart';
import 'package:artisan_oga/features/authentication/data/model/signup_model.dart';
import 'package:artisan_oga/features/authentication/data/model/state_response_model.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/signup_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResultEntity> login(LoginEntity entity);
  Future<AuthResultEntity> signup(SignupEntity entity);
  Future<List<CountryResponseEntity>> getCountries();
  Future<List<StateResponseEntity>> getState(String countryId);
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
  Future<AuthResultEntity> signup(SignupEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.signup,
      body: SignupModel.fromEntity(entity).toJson(),
    );

    return AuthResultModel.fromJson(result as Map<String, dynamic>);
  }

  @override
  Future<List<CountryResponseEntity>> getCountries() async {
    final result = await api.get(
      url: AppApiEndpoint.getFixtures,
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
        url: AppApiEndpoint.getFixtures,
        queryParameters: {"country_id": countryId}) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => StateResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }
}
