part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    String? errorMessage,
    @Default(ViewState.idle) ViewState viewState,
    @Default([]) List<FeaturedCandidatesEntity> featureCandidateList,
    @Default([]) List<AllJobResponseEntity> allJobList,
    @Default([]) List<EmployerJobResponseEntity> employerJobList,
    @Default([]) List<FeaturedJobResponseEntity> featuredJobList,
    @Default([]) List<JobSeekerJobResponseEntity> jobSeekerJobList,
  }) = _Initial;
}
