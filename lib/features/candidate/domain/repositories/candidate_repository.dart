import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CandidateRepository {
  Future<Either<Failure, List<GetJobSeekerResponseEntity>>>
      getAssignedCandidate(String jobId);
  Future<Either<Failure, bool>> acceptCandidate(AcceptCandidateEntity entity);
  Future<Either<Failure, bool>> rejectCandidate(AcceptCandidateEntity entity);
}
