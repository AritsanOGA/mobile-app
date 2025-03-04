part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.started() = _Started;
  const factory SettingEvent.getJobSeekerProfile() = _GetJobSeekerProfile;
  const factory SettingEvent.getActivities() = _GetActivities;
  const factory SettingEvent.loadActivities() = _LoadActivities;
  const factory SettingEvent.filteredActivities(int selectedTabIndex) =
      _FilteredActivities;
  const factory SettingEvent.getEmployerProfile() = _GetEmployerProfile;
  const factory SettingEvent.getJobSeekerNotification() =
      _GetJobSeekerNotification;

  const factory SettingEvent.updateJobSeekerProfile(
      UpdateJobSeekerProfileEntity entity) = _UpdateJobSeekerProfile;
  const factory SettingEvent.updateEmployerProfile(
      UpdateEmployerProfileEntity entity) = _UpdateEmployerProfile;
  const factory SettingEvent.updatePassword(ChangePasswordEntity entity) =
      _UpdatePassword;
  const factory SettingEvent.updateJobSeekerRequest(
          UpdateJobSeekerProfileEntity updateJobSeekerprofile) =
      _UpdateJobSeekerRequest;
}
