part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial({
    @Default(0) int selectedTabIndex,
    @Default([]) List<ActivitiesEntity> filteredActivity,
    @Default([]) List<NotificationEntity> notification,
    @Default([]) List<ActivitiesEntity> activity,
    @Default([]) List<SkillResponseEntity> skills,
    @Default([]) List<SkillResponseEntity> skill,
    @Default([]) List<CategoryResponseEntity> categoryList,
    StateResponseEntity? state,
    CategoryResponseEntity? category,
    File? passport,
    @Default('--Select--') String jobType,
    @Default('--Select--') String compensationType,
    @Default(UpdateJobSeekerProfileState.idle)
    UpdateJobSeekerProfileState updateJobSeekerProfileState,
    @Default(GetEmployerProfileState.idle)
    GetEmployerProfileState getEmployerProfileState,
    @Default(GetJobSeekerProfileState.idle)
    GetJobSeekerProfileState getJobSeekerProfileState,
    @Default(UpdateEmployerProfileState.idle)
    UpdateEmployerProfileState updateEmployerProfileState,
    @Default(JobSeekerNotificationState.idle)
    JobSeekerNotificationState jobSeekerNotificationState,
    @Default(ActvitiesState.idle) ActvitiesState activitiesState,
    String? errorMessage,
    @Default(UpdatePasswordState.idle) UpdatePasswordState updatePasswordState,
    GetEmployerResponseEntity? getEmployerResponseEntity,
    GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
    @Default(UpdateJobSeekerProfileEntity(
        fullName: '',
        state: '',
        city: '',
        resume: null,
        email: '',
        phoneNumber: '',
        streetAddress: '',
        yearsOfExperience: '',
        guarantorPhoneNumber: '',
        guarantorName: '',
        guarantorEmail: '',
        category: '',
        identity: '',
        countryId: 0,
        aboutMe: '',
        compensationType: '',
        maxAmount: '',
        minAmount: '',
        dateOFBirth: '',
        skill: [],
        jobPreference: '',
        passport: null,
        guarantorAddress: ''))
    UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest,
    @Default(["--Select--", "Full Time", "Temporary", "Contract", "Part Time"])
    List<String> jobTypeList,
    @Default([
      "Salary",
      "Pay per job",
    ])
    List<String> compensationTypeList,
  }) = _Initial;
}
