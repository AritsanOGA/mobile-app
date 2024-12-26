part of 'candidates_bloc.dart';

@freezed
class CandidatesState with _$CandidatesState {
  const factory CandidatesState.initial({
    AcceptCandidateEntity? acceptCandidateEntity,
  }) = _Initial;
}
