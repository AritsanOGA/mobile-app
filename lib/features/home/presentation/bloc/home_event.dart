part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started(
      // {
      // HomeBloc.add
      // }
      ) = _Started;
  const factory HomeEvent.getFeaturedCandidates() = _GetFeaturedCandidate;
}