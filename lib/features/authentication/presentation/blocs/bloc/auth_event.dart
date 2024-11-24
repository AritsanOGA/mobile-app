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
  const factory AuthEvent.updateSelectedSkill(SkillResponseEntity value) =
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
  const factory AuthEvent.selectPassport() = _SelectPassport;
  const factory AuthEvent.selectResume() = _SelectResume;
  const factory AuthEvent.updateSelectedIsChecked(bool value) =
      _UpdateSelectedIsChecked;
  const factory AuthEvent.updateSelectedPassport(File value) =
      _UpdateSelectedPassport;
  const factory AuthEvent.updateSelectedResume(File value) =
      _UpdateSelectedResume;
  const factory AuthEvent.loginUser(LoginEntity param) = _LoginUser;
  const factory AuthEvent.getCountries() = _GetCountries;
  const factory AuthEvent.getState(String id) = _GetState;
  const factory AuthEvent.getCategory() = _GetCategory;
  const factory AuthEvent.updateRegisterEmployerRequest(RegisterEmployerEntity registerEmployerRequest) = _UpdateRegisterEmployerRequest;
  const factory AuthEvent.getSkills(String id) = _GetSkills;
  const factory AuthEvent.registerEmployer(RegisterEmployerEntity param
      //   {
      //   required String fullName,
      //   required String officeTitle,
      //   required String companyName,
      //   required String phoneNumber,
      //   required String email,
      //   required String pasword,
      //   required String confirmPassword,
      //   required String city,
      // }
      ) = _RegisterEmployer;
  const factory AuthEvent.registerJobSeeker(
    RegisterJobSeekerEntity param
  //   {
  //   required String email,
  //   required String password,
  //   required String confirmPassword,
  //   required String fullName,
  //   required String officeTitle,
  //   required String companyName,
  //   required String city,
  //   required String passport,
  //   required String resume,
  //   required String gender,
  //   required String phoneNumber,
  //   required String guarantorName,
  //   required String guarantorEmail,
  //   required String residentialAddress,
  //   required String yearsOfExperience,
  //   required String describeYourRole,
  //   required String dateOFBirth,
  //   required String role,
  //   required String description,
  //   required String startYear,
  //   required String endYear,
  //   required String schoolName,
  //   required String certificateObtained,
  //   required String graduationYear,
  
  // }
  ) = _RegisterJobSeeker;

  // AuthEvent.updateHere(bool value)
}
