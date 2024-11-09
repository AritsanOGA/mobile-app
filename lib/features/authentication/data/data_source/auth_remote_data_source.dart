import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/features/authentication/data/model/auth_result_model.dart';
import 'package:artisan_oga/features/authentication/data/model/login_model.dart';
import 'package:artisan_oga/features/authentication/data/model/signup_model.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/signup_entity.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResultEntity> login(LoginEntity entity);
  Future<AuthResultEntity> signup(SignupEntity entity);
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
}
