import 'dart:io';

import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/candidate/data/model/accept_candidate_model.dart';
import 'package:artisan_oga/features/candidate/data/model/add_award_model.dart';
import 'package:artisan_oga/features/candidate/data/model/add_education_model.dart';
import 'package:artisan_oga/features/candidate/data/model/add_experience_model.dart';
import 'package:artisan_oga/features/candidate/data/model/candidate_profile_model.dart';
import 'package:artisan_oga/features/candidate/data/model/candidate_skill_model.dart';
import 'package:artisan_oga/features/candidate/data/model/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/data/model/get_awards_model.dart';
import 'package:artisan_oga/features/candidate/data/model/get_education_model.dart';
import 'package:artisan_oga/features/candidate/data/model/get_experience_model.dart';
import 'package:artisan_oga/features/candidate/data/model/reject_candidate_model.dart';
import 'package:artisan_oga/features/candidate/data/model/reject_candidate_without_interview_model.dart';
import 'package:artisan_oga/features/candidate/data/model/upload_id_card_model.dart';
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

abstract class CandidateRemoteSource {
  Future<List<GetAssignedApplicantsEntity>> getAssignedCandidate(String jobId);
  Future<List<CandidateSkillEntity>> getCandidateSkills(String identityId);
  Future<CandidateProfileEntity> getCandidateProfile(String identityId);
  Future<bool> rejectCandidate(RejectCandidateEntity entity);
  Future<bool> rejectCandidateWithoutInterview(
      RejectCandidateWithoutInterviewEntity entity);

  Future<bool> acceptCandidate(AcceptCandidateEntity entity);
  Future<bool> deleteWorkPhoto(String identity);
  Future<bool> uploadWorkPhotos(List<File> workPhotos);
  Future<bool> uploadIdCard(UploadIDCardEntity entity);
  Future<bool> addEducation(AddEducationEntity entity);
  Future<bool> updateEducation(AddEducationEntity entity);
  Future<bool> deleteEducation(String identity);
  Future<List<GetEducationEntity>> getEducation();
  Future<bool> addExperience(AddExperienceEntity entity);
  Future<bool> updateExperience(AddExperienceEntity entity);
  Future<bool> deleteExperience(String identity);
  Future<List<GetExperienceEntity>> getExperience();

  Future<bool> addAwards(AddAwardEntity entity);
  Future<bool> updateAwards(AddAwardEntity entity);
  Future<bool> deleteAwards(String identity);
  Future<List<GetAwardEntity>> getAwards();
  Future<List<GetExperienceEntity>> getWorkPhoto();
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
  Future<bool> rejectCandidate(RejectCandidateEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.rejectCandidate,
        body: RejectCandidateModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<List<CandidateSkillEntity>> getCandidateSkills(
      String identityId) async {
    final result = await api.post(
      url: AppApiEndpoint.getCandidateSkill,
      body: {"user_identity": identityId},
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
    final result = await api.post(
      url: AppApiEndpoint.candidateProfile,
      headers: userService.authorizationHeader,
      body: {"user_identity": identityId},
    ) as Map<String, dynamic>;
    print('my cadi ${result}');
    return CandidateProfileModel.fromJson(
      result['data'] as Map<String, dynamic>,
    );
  }

  @override
  Future<bool> rejectCandidateWithoutInterview(
      RejectCandidateWithoutInterviewEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.rejectCandidateWithoutInterview,
        body: RejectCandidateWithoutInterviewModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<bool> addEducation(AddEducationEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.addEducation,
        body: AddEducationModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<bool> deleteEducation(String identity) async {
    final result = await api.post(
        url: AppApiEndpoint.deleteEducation,
        body: {"identity": identity},
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<bool> deleteWorkPhoto(String identity) async {
    final result = await api.post(
        url: AppApiEndpoint.deleteWorkPhoto,
        body: {"identity": identity},
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<List<GetEducationEntity>> getEducation() async {
    final result = await api.get(
      url: AppApiEndpoint.getEducation,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => GetEducationModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<bool> updateEducation(AddEducationEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.updateEducation,
        body: AddEducationModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<bool> uploadIdCard(UploadIDCardEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.uploadIdCard,
        body: UploadIDCardModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<bool> uploadWorkPhotos(List<File> workPhotos) async {
    final result = await api.post(
        url: AppApiEndpoint.uploadWorkPhoto,
        body: {"work_photos": workPhotos},
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<bool> addExperience(AddExperienceEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.addExperience,
        body: AddExperienceModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<bool> deleteExperience(String identity) async {
    final result = await api.post(
        url: AppApiEndpoint.deleteExperience,
        body: {"identity": identity},
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<List<GetExperienceEntity>> getExperience() async {
    final result = await api.get(
      url: AppApiEndpoint.getExperience,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => GetExperienceModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<bool> updateExperience(AddExperienceEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.updateExperience,
        body: AddExperienceModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<bool> addAwards(AddAwardEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.addAward,
        body: AddAwardModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<bool> deleteAwards(String identity) async {
    final result = await api.post(
        url: AppApiEndpoint.deleteAward,
        body: {"identtiy": identity},
        headers: userService.authorizationHeader);

    return true;
  }

  @override
  Future<List<GetAwardEntity>> getAwards() async {
    final result = await api.get(
      url: AppApiEndpoint.getAward,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => GetAwardModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<List<GetExperienceEntity>> getWorkPhoto() async {
    final result = await api.get(
      url: AppApiEndpoint.getExperience,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => GetExperienceModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  @override
  Future<bool> updateAwards(AddAwardEntity entity) async {
    final result = await api.post(
        url: AppApiEndpoint.updateAward,
        body: AddAwardModel.fromEntity(entity).toJson(),
        headers: userService.authorizationHeader);

    return true;
  }
}
