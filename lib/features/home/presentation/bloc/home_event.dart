part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started(
      // {
      // HomeBloc.add
      // }
      ) = _Started;
  const factory HomeEvent.getFeaturedCandidates() = _GetFeaturedCandidate;
  const factory HomeEvent.getFeaturedJob() = _GetFeaturedJob;
  const factory HomeEvent.getEmployerJob() = _GetEmployerJob;
  const factory HomeEvent.getAllJobs() = _GetAllJobs;
  const factory HomeEvent.getJobSeekerJobs() = _GetJobSeekerJobs;
  const factory HomeEvent.postJob(PostJobEntity param) = _PostJob;
  const factory HomeEvent.updatePostJobRequest(PostJobEntity postJobRequest) =
      _UpdatePostJobRequest;
  const factory HomeEvent.applyForJob(String id) = _ApplyForJob;
}
