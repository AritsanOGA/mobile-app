part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial(
      {String? errorMessage,
      @Default(ViewState.idle) ViewState viewState,
      @Default([]) List<FeaturedCandidatesEntity> featureCandidateList,
      @Default([]) List<AllJobResponseEntity> allJobList,
      @Default([]) List<EmployerJobResponseEntity> employerJobList,
      @Default([]) List<FeaturedJobResponseEntity> featuredJobList,
      @Default([]) List<JobSeekerJobResponseEntity> jobSeekerJobList,
      @Default(PostJobEntity(
          jobTitle: '',
          companyName: '',
          category: '',
          workType: '',
          jobDescription: '',
          skills: '',
          position: '',
          hireType: '',
          categoryId: 0,
          yearsOfExperience: 0,
          levelOfEducation: '',
          skillLevel: '',
          maxAmount: 0,
          minAmount: 0,
          country: '',
          state: '',
          city: '',
          available: '',
          availableFor: '',
          compensationType: '',
          gender: '',
          officeAddress: '',
          applicationDeadline: ''))
      PostJobEntity postJobRequest}) = _Initial;
}
