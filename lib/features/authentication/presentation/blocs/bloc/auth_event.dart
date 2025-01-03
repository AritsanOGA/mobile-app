part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.updateSelectedCountry(CountryResponseEntity value) =
      _UpdateSelectedCountry;
  const factory AuthEvent.updateSelectedGender(String value) =
      _UpdateSelectedGender;
  const factory AuthEvent.updateSelectedState(StateResponseEntity value) =
      _UpdateSelectedState;
  const factory AuthEvent.updateSelectedCity(String value) =
      _UpdateSelectedCity;
  const factory AuthEvent.updateSelectedCategory(CategoryResponseEntity value) =
      _UpdateSelectedCategory;
  const factory AuthEvent.updateSelectedSkill(List<SkillResponseEntity> value) =
      _UpdateSelectedSkill;
  const factory AuthEvent.updateSelectedJobType(String value) =
      _UpdateSelectedJobType;
  const factory AuthEvent.updateSelectedEducationQualification(String value) =
      _UpdateSelectedEducationQualification;
  const factory AuthEvent.updateEmploymentHistory(String value) =
      _UpdateEmploymentHistory;
 
  const factory AuthEvent.updateSelectedCompanyLogo(File value) =
      _UpdateSelectedCompanyLogo;
  const factory AuthEvent.selectCompanyLogo() = _SelectCompanyLogo;
  const factory AuthEvent.selectPicture() = _SelectPicture;
  const factory AuthEvent.selectResume() = _SelectResume;
  const factory AuthEvent.updateSelectedIsChecked(bool value) =
      _UpdateSelectedIsChecked;
  const factory AuthEvent.updateSelectedPassport(File value) =
      _UpdateSelectedPassport;
  const factory AuthEvent.updateSelectedResume(File value) =
      _UpdateSelectedResume;
  const factory AuthEvent.verifyCode(VerifyCodeEntity value) = _VerifyCode;
  const factory AuthEvent.loginUser(LoginEntity param) = _LoginUser;
  const factory AuthEvent.getCountries() = _GetCountries;
  const factory AuthEvent.getState(String id) = _GetState;
  const factory AuthEvent.getCategory() = _GetCategory;
  const factory AuthEvent.updateRegisterEmployerRequest(
          RegisterEmployerEntity registerEmployerRequest) =
      _UpdateRegisterEmployerRequest;
  const factory AuthEvent.updateRegisterJobSeekerRequest(
          RegisterJobSeekerEntity registerJobSeekerRequest) =
      _UpdateRegisterJobSeekerRequest;
  const factory AuthEvent.getSkills(String id) = _GetSkills;
  const factory AuthEvent.registerEmployer(RegisterEmployerEntity param) =
      _RegisterEmployer;
  const factory AuthEvent.registerJobSeeker(RegisterJobSeekerEntity param) =
      _RegisterJobSeeker;
  const factory AuthEvent.getUserData() = _GetUserData;
    const factory AuthEvent.removeUserData() = _RemoveUserData;
  const factory AuthEvent.selectTab(int index) = _SelectTabEvent;
}
