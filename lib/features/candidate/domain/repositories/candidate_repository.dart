import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_without_interview_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CandidateRepository {
  Future<Either<Failure, List<GetAssignedApplicantsEntity>>>
      getAssignedCandidate(String jobId);
  Future<Either<Failure, CandidateProfileEntity>> getCandidateProfile(
      String identityId);
  Future<Either<Failure, List<CandidateSkillEntity>>> getCandidateSkills(
      String identityId);
  Future<Either<Failure, bool>> acceptCandidate(AcceptCandidateEntity entity);
  Future<Either<Failure, bool>> rejectCandidate(RejectCandidateEntity entity);
  Future<Either<Failure, bool>> rejectCandidateWithoutInterview(
      RejectCandidateWithoutInterviewEntity entity);
}
