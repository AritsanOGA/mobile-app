import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/candidate/data/model/accept_candidate_model.dart';
import 'package:artisan_oga/features/candidate/data/model/candidate_profile_model.dart';
import 'package:artisan_oga/features/candidate/data/model/candidate_skill_model.dart';
import 'package:artisan_oga/features/candidate/data/model/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';

abstract class CandidateRemoteSource {
  Future<List<GetAssignedApplicantsEntity>> getAssignedCandidate(String jobId);
  Future<List<CandidateSkillEntity>> getCandidateSkills();
  Future<CandidateProfileEntity> getCandidateProfile(String identityId);
  Future<bool> rejectCandidate(AcceptCandidateEntity entity);
  Future<bool> acceptCandidate(AcceptCandidateEntity entity);
}

class CandidateRemoteSourceImpl extends CandidateRemoteSource {
  final ApiService api;
  final UserService userService;

  CandidateRemoteSourceImpl(
    this.api,
    this.userService,
  );

  @override
  Future<bool> acceptCandidate(AcceptCandidateEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.acceptCandidate,
        body: AcceptCandidateModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<List<GetAssignedApplicantsEntity>> getAssignedCandidate(
      String jobId) async {
    final result = await api.get(
        url: AppApiEndpoint.getAssignedCandidate,
        headers: userService.authorizationHeader,
        queryParameters: {"job_id": jobId}) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => GetAssignedApplicantsModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<bool> rejectCandidate(AcceptCandidateEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.rejectCandidate,
        body: AcceptCandidateModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<List<CandidateSkillEntity>> getCandidateSkills() async {
    final result = await api.get(
      url: AppApiEndpoint.getAssignedCandidate,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => CandidateSkillModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<CandidateProfileEntity> getCandidateProfile(String identityId) async {
    final result = await api.get(
        url: AppApiEndpoint.getAssignedCandidate,
        headers: userService.authorizationHeader,
        queryParameters: {"user_identity": identityId}) as Map<String, dynamic>;
    return CandidateProfileModel.fromJson(
      result['data'] as Map<String, dynamic>,
    );
  }
}
