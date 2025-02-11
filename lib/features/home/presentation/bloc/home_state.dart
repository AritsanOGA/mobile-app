part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial(
      {String? errorMessage,
      String? jobType,
      String? workMode,
      String? gender,
      String? skillLevel,
      String? educationLevel,
      String? compensationType,
      String? package,
      DateTime? applicationTime,
      String? availablity,
      @Default([]) List<FeaturedCandidatesEntity> featureCandidateList,
      @Default([]) List<AllJobResponseEntity> allJobList,
      @Default([]) List<EmployerJobResponseEntity> employerJobList,
      @Default([]) List<FeaturedJobResponseEntity> featuredJobList,
      @Default([]) List<JobSeekerJobResponseEntity> jobSeekerJobList,
      @Default([]) List<SkillResponseEntity> skills,
      @Default([]) List<SkillResponseEntity> skill,
      @Default([]) List<CategoryResponseEntity> categoryList,
      @Default([]) List<CountryResponseEntity> countries,
      @Default([]) List<StateResponseEntity> states,
      CategoryResponseEntity? category,
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
          currency: '',
          officeAddress: '',
          applicationDeadline: ''))
      PostJobEntity postJobRequest,
      @Default(["Contract", "Full time", "Part_time", "Temporary"])
      List<String> jobtypeList,
      @Default([
        "Salary",
        "Pay per job",
      ])
      List<String> compensationTypeList,
      @Default(["Onsite", "Hybrid", "Remote"]) List<String> workModeList,
      @Default(["BSC", "BA", "MSC", "OND", "HND", "SSCE", "NONE"])
      List<String> levelOfEducationList,
      @Default(["Male", "Female", "No preferences"]) List<String> genderList,
      @Default([
        "Male", "Female", "Both"
        // "Package (Free(0.00)",
        // "Silver (25,000.00)",
        // "Gold(35,000.00)",
        // "Platinum(50,000.00)"
      ])
      List<String> packageList,
      @Default(["Yes", "No"]) List<String> availabilityList,
      @Default(0) int selectedIndex,
      @Default(
          ["Internship/Graduate Training", "Semi-Skilled", "Skilled/Unskilled"])
      List<String> skillLevelList,
      @Default(GetFeaturedJobState.idle)
      GetFeaturedJobState getFeaturedJobState,
      @Default(GetFeaturedCandidateState.idle)
      GetFeaturedCandidateState getFeaturedCandidateState,
      @Default(GetJobSeekerJobState.idle)
      GetJobSeekerJobState getJobSeekerJobState,
      @Default(GetEmployerJobState.idle)
      GetEmployerJobState getEmployerJobState,
      @Default(PostJobState.idle) PostJobState postJobState,
      @Default(ApplyForJobState.idle) ApplyForJobState applyForJobState,
      @Default(GetCategoryState.idle) GetCategoryState getCategoryState,
      @Default(GetSkillState.idle) GetSkillState getSkillState,
      @Default(GetCountryState.idle) GetCountryState getCountryState,
      @Default(GetStateState.idle) GetStateState getStateState,
      @Default(GetAllJobState.idle) GetAllJobState getAllJobState}) = _Initial;
}
