part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    String? errorMessage,
    String? jobType,
    String? workMode,
    String? gender,
    String? skillLevel,
    @Default(ViewState.idle) ViewState viewState,
    @Default([]) List<FeaturedCandidatesEntity> featureCandidateList,
    @Default([]) List<AllJobResponseEntity> allJobList,
    @Default([]) List<EmployerJobResponseEntity> employerJobList,
    @Default([]) List<FeaturedJobResponseEntity> featuredJobList,
    @Default([]) List<JobSeekerJobResponseEntity> jobSeekerJobList,
    @Default([]) List<SkillResponseEntity> skill,
    @Default([]) List<CategoryResponseEntity> categoryList,
    @Default([]) List<CountryResponseEntity> countries,
    @Default([]) List<StateResponseEntity> states,
    CategoryResponseEntity? category,
    SkillResponseEntity? skills,
    CountryResponseEntity? country,
    StateResponseEntity? state,
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
    PostJobEntity postJobRequest,
    @Default(["Contract", "Full time", "Part_time", "Temporary"])
    List<String> jobtypeList,
    @Default(["Onsite", "Hybrid", "Remote"]) List<String> workModeList,
    @Default([
      "Primary school",
      "Junior secondary",
      "High school",
      "University",
      "Masters",
      "Post Graduate Edu"
    ])
    List<String> levelOfEducationList,
    @Default(["Male", "Female", "No preferences"]) List<String> genderList,
    @Default(
        ["Internship/Graduate Training", "Semi-Skilled", "Skilled/Unskilled"])
    List<String> skillLevelList,
    @Default(SuccessType.none) SuccessType successType,
  }) = _Initial;
}
