part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial({
    @Default([]) List<NotificationEntity> notification,
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
    @Default(EmployerNotificationState.idle)
    EmployerNotificationState employerNotificationState,
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
  }) = _Initial;
}
