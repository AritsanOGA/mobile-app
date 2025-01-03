part of 'candidates_bloc.dart';

@freezed
class CandidatesEvent with _$CandidatesEvent {
  // const factory CandidatesEvent.started() = _Started;

  const factory CandidatesEvent.acceptCandidate(AcceptCandidateEntity param) =
      _AcceptCandidate;
  const factory CandidatesEvent.rejectCandidate(AcceptCandidateEntity param) =
      _RejectCandidate;
  const factory CandidatesEvent.getAssignedCandidate(String jobId) =
      _GetAssignedCandidate;
  const factory CandidatesEvent.getCandidateSkill(String identityId) =
      _GetCandidateSkill;
        const factory CandidatesEvent.initializeSkills(
     List<CandidateSkillEntity> candidateSkills,
  ) = _InitializeSkills;
  const factory CandidatesEvent.getCandidateProfile(String jobId) =
      _GetCandidateProfile;
       const factory CandidatesEvent.updateSkillRating(String value, int skillIndex) =
      _UpdateSkillRating;
}
