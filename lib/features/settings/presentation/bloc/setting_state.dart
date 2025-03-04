part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial({
   @Default(0) int selectedTabIndex,
    @Default([]) List<ActivitiesEntity> filteredActivity,
    @Default([]) List<NotificationEntity> notification,
    @Default([]) List<ActivitiesEntity> activity,
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
        jobType: '',
        streetAddress: '',
        yearsOfExperience: '',
        guarantorPhoneNumber: '',
        guarantorName: '',
        guarantorEmail: '',
        category: '',
        identity: '',
        countryId: '',
        aboutMe: '',
        compensationType: '',
        maxAmount: '',
        minAmount: '',
        dateOFBirth: '',
        skill: '',
        guarantorAddress: ''))
    UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest,
    // @Default(["--Select--", "Full Time", "Temporary", "Contract", "Part Time"])
    // List<String> activitieCategory,
  }) = _Initial;
}
