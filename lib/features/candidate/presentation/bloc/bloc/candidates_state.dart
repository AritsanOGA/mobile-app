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
      String? errorMessage,
      String? jobId,
      @Default([]) List<GetAssignedApplicantsEntity> getAssignedCandidateList,
      @Default([]) List<CandidateSkillEntity> candidateSkillList,
      CandidateProfileEntity? candidateProfileEntity}) = _Initial;
}
