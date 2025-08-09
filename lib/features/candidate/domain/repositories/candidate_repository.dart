import 'dart:io';

import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_without_interview_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/upload_card_entity.dart';
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
  Future<Either<Failure, bool>> addExperience(AddExperienceEntity entity);
  Future<Either<Failure, bool>> updateExperience(AddExperienceEntity entity);
  Future<Either<Failure, bool>> deleteExperience(String identity);
  Future<Either<Failure, List<GetExperienceEntity>>> getExperience();
  Future<Either<Failure, bool>> addEducation(AddEducationEntity entity);
  Future<Either<Failure, bool>> deleteEducation(String identity);
  Future<Either<Failure, List<GetEducationEntity>>> getEducation();
  Future<Either<Failure, bool>> updateEducation(AddEducationEntity entity);
  Future<Either<Failure, bool>> addAwards(AddAwardEntity entity);
  Future<Either<Failure, bool>> deleteAwards(String identity);
  Future<Either<Failure, List<GetAwardEntity>>> getAwards();
  Future<Either<Failure, List<GetExperienceEntity>>> getWorkPhoto();
  Future<Either<Failure, bool>> updateAwards(AddAwardEntity entity);
  Future<Either<Failure, bool>> deleteWorkPhoto(String identity);
  Future<Either<Failure, bool>> uploadIdCard(UploadIDCardEntity entity);
  Future<Either<Failure, bool>> uploadWorkPhoto(List<File> workPhotos);
  Future<Either<Failure, bool>> rejectCandidateWithoutInterview(
      RejectCandidateWithoutInterviewEntity entity);
}
