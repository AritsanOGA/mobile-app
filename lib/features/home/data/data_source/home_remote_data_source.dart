import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/home/data/model/featured_candidate_model.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<FeaturedCandidatesEntity>> getFeaturedCandidates();
  Future<List<FeaturedCandidatesEntity>> getJobSeekerJobs();
  Future<List<FeaturedCandidatesEntity>> getEmployerJob();
  Future<List<FeaturedCandidatesEntity>> getFeaturedJob();
  Future<List<FeaturedCandidatesEntity>> getAllJobs();
  Future<FeaturedCandidatesEntity> applyForJob(String id);
  Future<FeaturedCandidatesEntity> postJob(FeaturedCandidatesEntity entity);
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
  Future<FeaturedCandidatesEntity> applyForJob(String id) async {
    final result = await api.post(url: AppApiEndpoint.postJob, body: ''
        // FeaturedCandidateModel.fromEntity(entity).toJson(),
        ) as Map<String, dynamic>;

    return FeaturedCandidateModel.fromJson(result as Map<String, dynamic>);
  }

  @override
  Future<List<FeaturedCandidatesEntity>> getAllJobs() async {
    final result = await api.get(
      url: AppApiEndpoint.getAllJobs,
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
  Future<List<FeaturedCandidatesEntity>> getEmployerJob() async {
    final result = await api.get(
      url: AppApiEndpoint.employerJob,
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
  Future<List<FeaturedCandidatesEntity>> getFeaturedJob() async {
    final result = await api.get(
      url: AppApiEndpoint.featuredJob,
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
  Future<List<FeaturedCandidatesEntity>> getJobSeekerJobs() async {
    final result = await api.get(
      url: AppApiEndpoint.jobSeekerJob,
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
  Future<FeaturedCandidatesEntity> postJob(
      FeaturedCandidatesEntity entity) async {
    final result = await api.post(url: AppApiEndpoint.postJob, body: ''
        // FeaturedCandidateModel.fromEntity(entity).toJson(),
        ) as Map<String, dynamic>;

    return FeaturedCandidateModel.fromJson(result as Map<String, dynamic>);
  }
}
