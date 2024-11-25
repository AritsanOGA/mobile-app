import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/home/data/model/all_job_reponse_model.dart';
import 'package:artisan_oga/features/home/data/model/employer_job_model.dart';
import 'package:artisan_oga/features/home/data/model/featured_candidate_model.dart';
import 'package:artisan_oga/features/home/data/model/featured_job_model.dart';
import 'package:artisan_oga/features/home/data/model/job_seeker_job_response_model.dart';
import 'package:artisan_oga/features/home/domain/entities/all_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/job_seeker_job_response_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<FeaturedCandidatesEntity>> getFeaturedCandidates();
  Future<List<JobSeekerJobResponseEntity>> getJobSeekerJobs();
  Future<List<EmployerJobResponseEntity>> getEmployerJob();
  Future<List<FeaturedJobResponseEntity>> getFeaturedJob();
  Future<List<AllJobResponseEntity>> getAllJobs();
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
  Future<List<AllJobResponseEntity>> getAllJobs() async {
    final result = await api.get(
      url: AppApiEndpoint.getAllJobs,
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
  Future<FeaturedCandidatesEntity> postJob(
      FeaturedCandidatesEntity entity) async {
    final result = await api.post(url: AppApiEndpoint.postJob, body: ''
        // FeaturedCandidateModel.fromEntity(entity).toJson(),
        ) as Map<String, dynamic>;

    return FeaturedCandidateModel.fromJson(result as Map<String, dynamic>);
  }
}
