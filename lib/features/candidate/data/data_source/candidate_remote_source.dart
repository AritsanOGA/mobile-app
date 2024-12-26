import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';

abstract class CandidateRemoteSource {
  Future<List<GetJobSeekerResponseEntity>> getAssignedCandidate(String jobId);
  Future<bool> rejectCandidate(AcceptCandidateEntity entity);
  Future<bool> acceptCandidate(AcceptCandidateEntity entity);
}
