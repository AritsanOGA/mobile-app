part of 'candidates_bloc.dart';

@freezed
class CandidatesState with _$CandidatesState {
  const factory CandidatesState.initial(
      {AcceptCandidateEntity? acceptCandidateEntity,
      @Default(AcceptCandidateState.idle)
      AcceptCandidateState acceptCandidateState,
      @Default(ViewState.idle) ViewState addExperienceState,
      @Default(ViewState.idle) ViewState updateExperienceState,
      @Default(ViewState.idle) ViewState deleteExperienceState,
      @Default(ViewState.idle) ViewState getExperienceState,
      @Default(ViewState.idle) ViewState addAwardsState,
      @Default(ViewState.idle) ViewState updateAwardsState,
      @Default(ViewState.idle) ViewState deleteAwardsState,
      @Default(ViewState.idle) ViewState getAwardsState,
      @Default(ViewState.idle) ViewState addEducationState,
      @Default(ViewState.idle) ViewState deleteEducationeState,
      @Default(ViewState.idle) ViewState updateEducationState,
      @Default(ViewState.idle) ViewState getEducationeState,
      @Default(ViewState.idle) ViewState uploadWorkIdState,
      @Default(ViewState.idle) ViewState uploadWorkPhotoState,
      @Default(ViewState.idle) ViewState getWorkPhotoState,
      @Default(ViewState.idle) ViewState deleteWorkPhotoState,
      @Default(RejectCandidateState.idle)
      RejectCandidateState rejectCandidateState,
      @Default(GetAssignedCandidateState.idle)
      GetAssignedCandidateState getAssignedCandidateState,
      @Default(GetCandidateProfileState.idle)
      GetCandidateProfileState getCandidateProfileState,
      @Default(GetCandidateSkillState.idle)
      GetCandidateSkillState getCandidateSkillState,
      @Default(RejectCandidateWithoutInterviewState.idle)
      RejectCandidateWithoutInterviewState rejectCandidateWithoutInterviewState,
      String? errorMessage,
      String? jobId,
      String? skillRating,
      int? skillIndex,
      File? workId,
      File? award,
      @Default([]) List<File> photos,
      @Default([]) List<GetAssignedApplicantsEntity> getAssignedCandidateList,
      @Default([]) List<CandidateSkillEntity> candidateSkillList,
      @Default([]) List<GetExperienceEntity> getExperienceEntity,
      @Default([]) List<GetEducationEntity> getEducationEntity,
      @Default([]) List<GetWorkPhotoEntity> getWorkPhotoEntity,
      @Default([]) List<GetAwardEntity> getAwardsEntity,
      @Default(['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'])
      List<String> dropdownValues,
      @Default('1') String dropdownValue,
      @Default(['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'])
      List<String> dropdownList,
      CandidateProfileEntity? candidateProfileEntity}) = _Initial;
}
