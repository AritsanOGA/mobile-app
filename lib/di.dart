import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/features/authentication/data/data_source/auth_remote_data_source.dart';
import 'package:artisan_oga/features/authentication/data/reposotories/auth_repository_impl.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_user_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/login_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/signup_usecases.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  locator
  ..registerLazySingleton<Dio>(()=> Dio())
  ..registerLazySingleton<ApiService>(()=> ApiServiceImpl(locator()))
    ..registerLazySingleton<AuthRemoteDataSource>(
        () => AuthRemoteDataSourceImpl(locator()))
    ..registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(authRemoteDataSource: locator()))
    ..registerLazySingleton<SignupUseCase>(() => SignupUseCase(locator()))
    ..registerLazySingleton<LoginUseCase>(() => LoginUseCase(locator()))
    ..registerLazySingleton<GetUserDataUseCase>(
        () => GetUserDataUseCase(locator()));
}
