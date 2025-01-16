part of 'candidates_bloc.dart';

@freezed
class CandidatesState with _$CandidatesState {
  const factory CandidatesState.initial(
      {AcceptCandidateEntity? acceptCandidateEntity,
      @Default(AcceptCandidateState.idle)
      AcceptCandidateState acceptCandidateState,
      @Default(RejectCandidateState.idle)
      RejectCandidateState rejectCandidateState,
      @Default(GetAssignedCandidateState.idle)
      GetAssignedCandidateState getAssignedCandidateState,
      @Default(GetCandidateProfileState.idle)
      GetCandidateProfileState getCandidateProfileState,
      @Default(GetCandidateSkillState.idle)
      GetCandidateSkillState getCandidateSkillState,
      String? errorMessage,
      String? jobId,
      String? skillRating,
      int? skillIndex,
      @Default([]) List<GetAssignedApplicantsEntity> getAssignedCandidateList,
      @Default([]) List<CandidateSkillEntity> candidateSkillList,
      @Default(['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'])
      List<String> dropdownValues,
      @Default('1') String dropdownValue,
      @Default(['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'])
      List<String> dropdownList,
      CandidateProfileEntity? candidateProfileEntity}) = _Initial;
}
