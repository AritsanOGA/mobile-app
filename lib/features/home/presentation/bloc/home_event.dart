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
  const factory HomeEvent.updateSelectedDate(DateTime value) =
      _UpdateSelectedDate;
  const factory HomeEvent.applyForJob(String id) = _ApplyForJob;
  const factory HomeEvent.getCategory() = _GetCategory;
  const factory HomeEvent.getSkills(String id) = _GetSkills;
  const factory HomeEvent.getCountries() = _GetCountries;
  const factory HomeEvent.getState(String id) = _GetState;
  const factory HomeEvent.updateSelectedCategory(CategoryResponseEntity value) =
      _UpdateSelectedCategory;

  const factory HomeEvent.updateSelectedJobType(String value) =
      _UpdateSelectedJobType;
  const factory HomeEvent.updateSelectedWorkMode(String value) =
      _UpdateSelectedWorkMode;
  const factory HomeEvent.updateSelectedGender(String value) =
      _UpdateSelectedGender;
  const factory HomeEvent.updateSelectedCompensationType(String value) =
      _UpdateSelectedCompensationType;
  const factory HomeEvent.updateSelectedSkillLevel(String value) =
      _UpdateSelectedSkillLevel;
  const factory HomeEvent.updateSelectedEducationlevel(String value) =
      _UpdateSelectedEducationLevel;
  const factory HomeEvent.updateSelectedSkill(List<SkillResponseEntity> value) =
      _UpdateSelectedSkill;
  const factory HomeEvent.updateSelectedPackage(String value) =
      _UpdateSelectedPackage;
  const factory HomeEvent.updateSelectedAvailability(String value) =
      _UpdateSelectedAvailability;
  const factory HomeEvent.updateCountry(CountryResponseEntity value) =
      _UpdateCountry;

  const factory HomeEvent.updateState(StateResponseEntity value) = _UpdateState;
    const factory HomeEvent.selectedDrawer(int index) = _SelectedDrawer;
}
