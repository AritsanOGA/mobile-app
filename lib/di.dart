import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/file_picker_service.dart';
import 'package:artisan_oga/core/services/local_storage.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/data/data_source/auth_remote_data_source.dart';
import 'package:artisan_oga/features/authentication/data/reposotories/auth_repository_impl.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/country_useecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_category_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_user_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/login_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_employer_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_job_seeker_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/skill_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/state_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/verify_code_usecase.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/authentication/data/data_source/auth_local_datasource.dart';

final locator = GetIt.instance;

Future<void> init() async {
  final sharedPref = await SharedPreferences.getInstance();
  locator
    ..registerLazySingleton<Dio>(() => Dio())
    ..registerLazySingleton(Connectivity.new)
    ..registerSingleton<Logger>(Logger())
    ..registerLazySingleton<ApiService>(() => ApiServiceImpl(locator()))
    ..registerLazySingleton<FilePickerService>(() => FilePickerService())
    ..registerLazySingleton<SharedPreferences>(() => sharedPref)
    ..registerLazySingleton<AuthRemoteDataSource>(
        () => AuthRemoteDataSourceImpl(locator(), UserService()))
    ..registerLazySingleton<AuthLocalDataSource>(
        () => AuthLocalDataSourceImpl(locator()))
    ..registerLazySingleton<LocalStorageService>(
        () => LocalStorageServiceImpl(locator()))
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
        authRemoteDataSource: locator(), localDataSource: locator()))
    ..registerLazySingleton<RegisterEmployerUseCase>(
        () => RegisterEmployerUseCase(locator()))
    ..registerLazySingleton<RegisterJobSeekerUseCase>(
        () => RegisterJobSeekerUseCase(locator()))
    ..registerLazySingleton<LoginUseCase>(() => LoginUseCase(locator()))
    ..registerLazySingleton<CountryUseCase>(() => CountryUseCase(locator()))
    ..registerLazySingleton<StateUseCase>(() => StateUseCase(locator()))
    ..registerLazySingleton<CategoryUseCase>(() => CategoryUseCase(locator()))
    ..registerLazySingleton<SkillUseCase>(() => SkillUseCase(locator()))
    ..registerLazySingleton<VerifyCodeUseCase>(
        () => VerifyCodeUseCase(locator()))
    ..registerLazySingleton<GetUserDataUseCase>(
        () => GetUserDataUseCase(locator()));
}
