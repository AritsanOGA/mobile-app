import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/file_picker_service.dart';
import 'package:artisan_oga/core/services/local_storage.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/data/data_source/auth_remote_data_source.dart';
import 'package:artisan_oga/features/authentication/data/reposItories/auth_repository_impl.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/country_useecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/forgot_password_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_category_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_user_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/login_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_employer_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_job_seeker_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/remove_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/search_job_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/skill_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/state_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/update_password_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/verify_code_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/verify_forgot_password_usecase.dart';
import 'package:artisan_oga/features/candidate/data/data_source/candidate_remote_source.dart';
import 'package:artisan_oga/features/candidate/data/repository/candidate_repository_impl.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/accept_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_profile_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_skill_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_assigned_candidate.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_without_interview_usecase.dart';
import 'package:artisan_oga/features/home/data/data_source/home_remote_data_source.dart';
import 'package:artisan_oga/features/home/data/repository/home_repoistory_impl.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:artisan_oga/features/home/domain/usecases/apply_for_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_all_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_employer_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_featured_candidate.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_featured_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_job_seeker_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/post_job_usecase.dart';
import 'package:artisan_oga/features/payment/data/data_source/payment_remote_data_source.dart';
import 'package:artisan_oga/features/payment/data/repository/payment_repository.dart';
import 'package:artisan_oga/features/payment/domain/repositories/payment_repository.dart';
import 'package:artisan_oga/features/payment/domain/usecases/card_payment_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/get_all_invoice_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/get_all_payment_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/get_invoice_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/get_invoice_with_identity_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/get_no_of_candidate_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/post_invoice_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/transfer_payment_usecase.dart';
import 'package:artisan_oga/features/payment/domain/usecases/verify_payment_usecase.dart';
import 'package:artisan_oga/features/settings/data/data_source/settings_remote_data_source.dart';
import 'package:artisan_oga/features/settings/data/repository/settings_repository_impl.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:artisan_oga/features/settings/domain/usecases/get_activities_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/get_employer_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/get_jobseeker_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/js_notification_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/update_employer_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/update_job_seeker_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/update_password_usecase.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/authentication/data/data_source/auth_local_datasource.dart';
import 'features/authentication/domain/usecases/search_job_detals_usecase.dart';

final locator = GetIt.instance;

Future<void> init() async {
  final sharedPref = await SharedPreferences.getInstance();
  // _dio.options.baseUrl = AppApiEndpoint.baseUri.toString();
  // _dio.options.sendTimeout = Duration(seconds: AppApiEndpoint.sendTimeout);
  // _dio.options.receiveTimeout =
  //     Duration(seconds: AppApiEndpoint.receiveTimeout);

  // _dio.interceptors.add(

  // );

  locator
    ..registerLazySingleton<Dio>(() => Dio(BaseOptions(
        baseUrl: AppApiEndpoint.baseUri.toString(),
        sendTimeout: Duration(seconds: AppApiEndpoint.sendTimeout),
        receiveTimeout: Duration(seconds: AppApiEndpoint.receiveTimeout)))
      ..interceptors.add(
        InterceptorsWrapper(
          onError: (e, handler) async {
            //if (e.response!.data['message'] == 'Unauthenticated') {
            //   await refreshToken();

            //   String refreshTokens =
            //       localStorage.getFromDisk('refreshToken').toString();
            //   print('neereftoken$refreshTokens');
            //   e.requestOptions.headers['Authorization'] = 'Bearer $refreshTokens';

            //   return handler.resolve(await _retry(e.requestOptions));
            // }
            print("ERROR [${e.response?.statusCode}]: ${e.requestOptions.uri}");
            print("Message: ${e.message}");
            print("Data: ${e.response?.data}");
            handler.next(e);
          },
          onRequest: (options, handler) {
         //   options.headers.addAll({'Authorization': ''});
            final path = options.uri.path;
            if (path.endsWith('verify')) {
              options.baseUrl = 'https://api.flutterwave.com';
            }
            print("REQUEST: ${options.method} ${options.uri}");
            print("Headers: ${options.headers}");
            print("Body: ${options.data}");

            handler.next(options);
          },
          onResponse: (response, handler) {
            print(
                "RESPONSE [${response.statusCode}]: ${response.requestOptions.uri}");
            print("Headers: ${response.headers}");
            print("Data: ${response.data}");
            handler.next(response);
          },
        ),
      ))
    ..registerLazySingleton(Connectivity.new)
    ..registerSingleton<Logger>(Logger())

    //service
    ..registerLazySingleton<ApiService>(
        () => ApiServiceImpl(locator(), locator()))
    ..registerLazySingleton<FilePickerService>(() => FilePickerService())
    ..registerLazySingleton<SharedPreferences>(() => sharedPref)

    //data sources
    ..registerLazySingleton<AuthRemoteDataSource>(
        () => AuthRemoteDataSourceImpl(
              locator(),
            ))
    ..registerLazySingleton<CandidateRemoteSource>(
        () => CandidateRemoteSourceImpl(locator(), UserService()))
    ..registerLazySingleton<SettingsRemoteDataSource>(
        () => SettingsRemoteDataSourceImpl(locator(), UserService()))
    ..registerLazySingleton<HomeRemoteDataSource>(
        () => HomeRemoteDataSourceImpl(locator(), UserService()))
    ..registerLazySingleton<AuthLocalDataSource>(
        () => AuthLocalDataSourceImpl(locator()))
    ..registerLazySingleton<PaymentRemoteDataSource>(
        () => PaymentRemoteDataSourceImpl(locator(), UserService(), locator()))
    ..registerLazySingleton<LocalStorageService>(
        () => LocalStorageServiceImpl(locator()))
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
        authRemoteDataSource: locator(), localDataSource: locator()))
    ..registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(
          homeRemoteDataSource: locator(),
        ))
    ..registerLazySingleton<SettingsRepository>(() => SettingsRepositoryImpl(
          settingsRemoteDataSource: locator(),
        ))
    ..registerLazySingleton<CandidateRepository>(() => CandidateRepositoryImpl(
          candidateRemoteSource: locator(),
        ))
    ..registerLazySingleton<PaymentRepository>(() => PaymentRepositoryImpl(
          paymentRemoteDataSource: locator(),
        ))

    //usecases
    ..registerLazySingleton<RegisterEmployerUseCase>(
        () => RegisterEmployerUseCase(locator()))
    ..registerLazySingleton<AcceptCandidateUseCase>(
        () => AcceptCandidateUseCase(locator()))
    ..registerLazySingleton<RejectCandidateUseCase>(
        () => RejectCandidateUseCase(locator()))
    ..registerLazySingleton<GetAssignedCandidateUseCase>(
        () => GetAssignedCandidateUseCase(locator()))
    ..registerLazySingleton<RegisterJobSeekerUseCase>(
        () => RegisterJobSeekerUseCase(locator()))
    ..registerLazySingleton<CandidateProfileUseCase>(
        () => CandidateProfileUseCase(locator()))
    ..registerLazySingleton<CandidateSkillUseCase>(
        () => CandidateSkillUseCase(locator()))
    ..registerLazySingleton<LoginUseCase>(() => LoginUseCase(locator()))
    ..registerLazySingleton<GetFeaturedCandidateUseCase>(
        () => GetFeaturedCandidateUseCase(locator()))
    ..registerLazySingleton<CountryUseCase>(() => CountryUseCase(locator()))
    ..registerLazySingleton<StateUseCase>(() => StateUseCase(locator()))
    ..registerLazySingleton<CategoryUseCase>(() => CategoryUseCase(locator()))
    ..registerLazySingleton<SkillUseCase>(() => SkillUseCase(locator()))
    ..registerLazySingleton<VerifyCodeUseCase>(
        () => VerifyCodeUseCase(locator()))
    ..registerLazySingleton<GetUserDataUseCase>(
        () => GetUserDataUseCase(locator()))
    ..registerLazySingleton<RemoveUserDataUseCase>(
        () => RemoveUserDataUseCase(locator()))
    ..registerLazySingleton<ApplyForJobUseCase>(
        () => ApplyForJobUseCase(locator()))
    ..registerLazySingleton<GetAllJobUseCase>(() => GetAllJobUseCase(locator()))
    ..registerLazySingleton<GetEmployerJobUseCase>(
        () => GetEmployerJobUseCase(locator()))
    ..registerLazySingleton<GetJobSeekerJobsUseCase>(
        () => GetJobSeekerJobsUseCase(locator()))
    ..registerLazySingleton<PostJobUseCase>(() => PostJobUseCase(locator()))
    ..registerLazySingleton<GetFeatureJobUseCase>(
        () => GetFeatureJobUseCase(locator()))
    ..registerLazySingleton<GetJobSeekeProfileUsecase>(
        () => GetJobSeekeProfileUsecase(locator()))
    ..registerLazySingleton<GetEmployerProfileUsecase>(
        () => GetEmployerProfileUsecase(locator()))
    ..registerLazySingleton<UpdateEmployerUseCase>(
        () => UpdateEmployerUseCase(locator()))
    ..registerLazySingleton<ChangePasswordUseCase>(
        () => ChangePasswordUseCase(locator()))
    ..registerLazySingleton<UpdateJobSeekerUsecase>(
        () => UpdateJobSeekerUsecase(locator()))
    ..registerLazySingleton<ForgotPasswordUseCase>(
        () => ForgotPasswordUseCase(locator()))
    ..registerLazySingleton<UpdatePasswordUseCase>(
        () => UpdatePasswordUseCase(locator()))
    ..registerLazySingleton<CardPaymentUseCase>(
        () => CardPaymentUseCase(locator()))
    ..registerLazySingleton<GetInvoiceUsecase>(
        () => GetInvoiceUsecase(locator()))
    ..registerLazySingleton<PostInvoiceUseCase>(
        () => PostInvoiceUseCase(locator()))
    ..registerLazySingleton<TransferPaymentUseCase>(
        () => TransferPaymentUseCase(locator()))
    ..registerLazySingleton<GetAllInvoiceUsecase>(
        () => GetAllInvoiceUsecase(locator()))
    ..registerLazySingleton<GetAllPaymentUsecase>(
        () => GetAllPaymentUsecase(locator()))
    ..registerLazySingleton<VerifyPaymentUseCase>(
        () => VerifyPaymentUseCase(locator()))
    ..registerLazySingleton<SearchJobDetailUseCase>(
        () => SearchJobDetailUseCase(locator()))
    ..registerLazySingleton<RejectCandidateWithoutIntervieUseCase>(
        () => RejectCandidateWithoutIntervieUseCase(locator()))
    ..registerLazySingleton<SearchJobUseCase>(() => SearchJobUseCase(locator()))
    ..registerLazySingleton<VerifyForgotPasswordUseCase>(
        () => VerifyForgotPasswordUseCase(locator()))
    ..registerLazySingleton<GetInvoiceWithIndentityUsecase>(
        () => GetInvoiceWithIndentityUsecase(locator()))
    ..registerLazySingleton<NoOfCandidateUseCase>(
        () => NoOfCandidateUseCase(locator()))
    ..registerLazySingleton<GetActivitiesUsecase>(
        () => GetActivitiesUsecase(locator()))
    ..registerLazySingleton<GetJobSeekerNotificationUsecase>(
        () => GetJobSeekerNotificationUsecase(locator()));
}
