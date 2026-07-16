part of 'candidates_bloc.dart';

@freezed
class CandidatesEvent with _$CandidatesEvent {
  // const factory CandidatesEvent.started() = _Started;

  const factory CandidatesEvent.acceptCandidate(AcceptCandidateEntity param) =
      _AcceptCandidate;
  const factory CandidatesEvent.rejectCandidate(RejectCandidateEntity param) =
      _RejectCandidate;
  const factory CandidatesEvent.addExperience(AddExperienceEntity param) =
      _AddExperience;
  const factory CandidatesEvent.updateExperience(UpdateExperienceEntity param) =
      _UpdateExperience;
  const factory CandidatesEvent.getExperience() = _GetExperience;
  const factory CandidatesEvent.deleteExperience(String identity) =
      _DeleteExperience;
  const factory CandidatesEvent.addAward(AddAwardEntity param) = _AddAward;
  const factory CandidatesEvent.updateAward(UpdateAwardEntity param) =
      _UpdateAward;
  const factory CandidatesEvent.getAward() = _GetAward;
  const factory CandidatesEvent.deleteAward(String identity) = _DeleteAward;
  const factory CandidatesEvent.addEducation(AddEducationEntity param) =
      _AddEducation;
  const factory CandidatesEvent.getWorkPhotos() = _GetWorkPhotos;
  const factory CandidatesEvent.deleteWorkPhoto(String identity) =
      _DeleteWorkPhoto;
  const factory CandidatesEvent.updateEducationQualification(String param) =
      _UpdateEducationQualification;
  const factory CandidatesEvent.selectWorkPhotos(List<File> photos) =
      _SelectWorkPhotos;
  const factory CandidatesEvent.uploadWorkPhoto(List<File> photos) =
      _UploadWorkPhoto;
  const factory CandidatesEvent.uploadWorkId(UploadIDCardEntity entity) =
      _UploadWorkId;
  const factory CandidatesEvent.selectWorkId() = _SelectWorkId;
  const factory CandidatesEvent.selectAward() = _SelectAward;
  const factory CandidatesEvent.updateEducation(AddEducationEntity param) =
      _UpdateEducation;
  const factory CandidatesEvent.getEducation() = _GetEducation;
  const factory CandidatesEvent.deleteEducation(String identity) =
      _DeleteEducation;
  const factory CandidatesEvent.rejectCandidateWithoutInterview(
          RejectCandidateWithoutInterviewEntity param) =
      _RejectCandidateWithoutInterview;
  const factory CandidatesEvent.getAssignedCandidate(String jobId) =
      _GetAssignedCandidate;
  const factory CandidatesEvent.getCandidateSkill(String identityId) =
      _GetCandidateSkill;
  const factory CandidatesEvent.initializeSkills(
    List<CandidateSkillEntity> candidateSkills,
  ) = _InitializeSkills;
  const factory CandidatesEvent.getCandidateProfile(String jobId) =
      _GetCandidateProfile;
  const factory CandidatesEvent.updateSkillRating(
      String value, int skillIndex) = _UpdateSkillRating;
  const factory CandidatesEvent.checkIfApplied(String jobId) =
      _CheckIfApplied;
}
