part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial({
    @Default(UpdateJobSeekerProfileState.idle)
    UpdateJobSeekerProfileState updateJobSeekerProfileState,
    @Default(GetEmployerProfileState.idle)
    GetEmployerProfileState getEmployerProfileState,
    @Default(GetJobSeekerProfileState.idle)
    GetJobSeekerProfileState getJobSeekerProfileState,
    @Default(UpdateEmployerProfileState.idle)
    UpdateEmployerProfileState updateEmployerProfileState,
    String? errorMessage,
    @Default(UpdatePasswordState.idle) UpdatePasswordState updatePasswordState,
    GetEmployerResponseEntity? getEmployerResponseEntity,
    GetJobSeekerResponseEntity? getJobSeekerResponseEntity,
    // @Default(UpdateJobSeekerProfileEntity(
    //     userId: 0,
    //     fullName: '',
    //     businessName: '',
    //     phoneNo: '',
    //     city: '',
    //     country: '',
    //     state: ''))
    // UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest,
  }) = _Initial;
}
