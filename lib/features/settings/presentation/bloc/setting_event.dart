part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.started() = _Started;
  const factory SettingEvent.getJobSeekerProfile() = _GetJobSeekerProfile;
  const factory SettingEvent.getEmployerProfile() = _GetEmployerProfile;
  const factory SettingEvent.updateJobSeekerProfile(
      UpdateJobSeekerProfileEntity entity) = _UpdateJobSeekerProfile;
  const factory SettingEvent.updateEmployerProfile(
      UpdateEmployerProfileEntity entity) = _UpdateEmployerProfile;
  const factory SettingEvent.updatePassword(
      ChangePasswordEntity entity) = _UpdatePassword;
  const factory SettingEvent.updateJobSeekerRequest(
          UpdateJobSeekerProfileEntity updateJobSeekerprofile) =
        _UpdateJobSeekerRequest;
}
