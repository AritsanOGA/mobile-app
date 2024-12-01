import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/data/model/auth_result_model.dart';
import 'package:artisan_oga/features/authentication/data/model/category_model.dart';
import 'package:artisan_oga/features/authentication/data/model/country_model.dart';
import 'package:artisan_oga/features/authentication/data/model/skill_response_model.dart';
import 'package:artisan_oga/features/authentication/data/model/state_response_model.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/home/data/model/all_job_reponse_model.dart';
import 'package:artisan_oga/features/home/data/model/employer_job_model.dart';
import 'package:artisan_oga/features/home/data/model/featured_candidate_model.dart';
import 'package:artisan_oga/features/home/data/model/featured_job_model.dart';
import 'package:artisan_oga/features/home/data/model/job_seeker_job_response_model.dart';
import 'package:artisan_oga/features/home/data/model/post_job_model.dart';
import 'package:artisan_oga/features/home/domain/entities/all_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/job_seeker_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<FeaturedCandidatesEntity>> getFeaturedCandidates();
  Future<List<JobSeekerJobResponseEntity>> getJobSeekerJobs();
  Future<List<EmployerJobResponseEntity>> getEmployerJob();
  Future<List<FeaturedJobResponseEntity>> getFeaturedJob();
  Future<List<AllJobResponseEntity>> getAllJobs();
  Future<bool> applyForJob(String id);
  Future<bool> postJob(PostJobEntity entity);
  Future<List<CountryResponseEntity>> getCountries();
  Future<List<StateResponseEntity>> getState(String countryId);
  Future<List<CategoryResponseEntity>> getCategory();
  Future<List<SkillResponseEntity>> getSkill(String categoryId);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl(this.api, this.userService);

  final ApiService api;
  final UserService userService;

  @override
  Future<List<FeaturedCandidatesEntity>> getFeaturedCandidates() async {
    final result = await api.get(
      url: AppApiEndpoint.getFeaturedCandidates,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => FeaturedCandidateModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<bool> applyForJob(String id) async {
    await api.post(
        url: AppApiEndpoint.applyForJob,
        headers: userService.authorizationHeader,
        body: {"job_id": id}) as Map<String, dynamic>;

    return true;
  }

  @override
  Future<List<AllJobResponseEntity>> getAllJobs() async {
    final result = await api.get(
      url: AppApiEndpoint.getAllJobs,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => AllJobResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<List<EmployerJobResponseEntity>> getEmployerJob() async {
    final result = await api.get(
      url: AppApiEndpoint.employerJob,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => EmployerJobResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<List<FeaturedJobResponseEntity>> getFeaturedJob() async {
    final result = await api.get(
      url: AppApiEndpoint.featuredJob,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => FeaturedJobResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<List<JobSeekerJobResponseEntity>> getJobSeekerJobs() async {
    final result = await api.get(
      url: AppApiEndpoint.jobSeekerJob,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => JobSeekerJobResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<bool> postJob(PostJobEntity entity) async {
    final result = await api.post(
      url: AppApiEndpoint.postJob,
      headers: userService.authorizationHeader,
      body: PostJobModel.fromEntity(entity).toJson(),
    ) as Map<String, dynamic>;

    return true;
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
}
