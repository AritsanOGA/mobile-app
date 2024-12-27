import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';

abstract class CandidateRemoteSource {
  Future<List<GetAssignedApplicantsEntity>> getAssignedCandidate(String jobId);
  Future<bool> rejectCandidate(AcceptCandidateEntity entity);
  Future<bool> acceptCandidate(AcceptCandidateEntity entity);
}


class CandidateRemoteSourceImpl extends CandidateRemoteSource{
  final ApiService api;

  CandidateRemoteSourceImpl({required this.api});

  @override
  Future<bool> acceptCandidate(AcceptCandidateEntity entity) {
    // TODO: implement acceptCandidate
    throw UnimplementedError();
  }

  @override
  Future<List<GetAssignedApplicantsEntity>> getAssignedCandidate(String jobId) async {
       final result = await api.get(
        url: AppApiEndpoint.geta,
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
  Future<bool> rejectCandidate(AcceptCandidateEntity entity) {
    // TODO: implement rejectCandidate
    throw UnimplementedError();
  }

}