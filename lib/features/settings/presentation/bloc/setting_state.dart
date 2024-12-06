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
    String? errorMessage;
    @Default(UpdatePasswordState.idle) UpdatePasswordState updatePasswordState,
    @Default([]) List<GetEmployerResponseEntity>  getEmployerResponseEntity,
    @Default([]) List<GetJobSeekerResponseEntity> getJobSeekerResponseEntity,
    // @Default(UpdateJobSeekerProfileEntity(userId: 2, fullName: fullName,
    //  businessName: businessName, phoneNo: phoneNo, city: city, country: country,
    //   state: state))  UpdateJobSeekerProfileEntity updateJobSeekerProfileRequest,
  }) = _Initial;
}
