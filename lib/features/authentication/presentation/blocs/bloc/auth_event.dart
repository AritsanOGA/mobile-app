part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.updateSelectedCountry(String value) =
      _UpdateSelectedCountry;
  const factory AuthEvent.updateSelectedGender(String value) =
      _UpdateSelectedGender;
  const factory AuthEvent.updateSelectedState(String value) =
      _UpdateSelectedState;
  const factory AuthEvent.updateSelectedCity(String value) =
      _UpdateSelectedCity;
  const factory AuthEvent.updateSelectedCategory(String value) =
      _UpdateSelectedCategory;
  const factory AuthEvent.updateSelectedSkill(String value) =
      _UpdateSelectedSkill;
  const factory AuthEvent.updateSelectedJobType(String value) =
      _UpdateSelectedJobType;
  const factory AuthEvent.updateSelectedEducationQualification(String value) =
      _UpdateSelectedEducationQualification;
  const factory AuthEvent.updateSelectedCompanyLogo(File value) =
      _UpdateSelectedCompanyLogo;
  const factory AuthEvent.updateSelectedIsChecked(bool value) =
      _UpdateSelectedIsChecked;
  const factory AuthEvent.updateSelectedPassport(File value) =
      _UpdateSelectedPassport;
  const factory AuthEvent.updateSelectedResume(File value) =
      _UpdateSelectedResume;
  const factory AuthEvent.loginUser(LoginEntity param) = _LoginUser;
  const factory AuthEvent.getCountries() = _GetCountries;
  const factory AuthEvent.getState() = _GetState;
  const factory AuthEvent.registerEmployer({
    required String fullName,
    required String officeTitle,
    required String companyName,
    required String phoneNumber,
    required String email,
    required String pasword,
  }) = _RegisterEmployer;
  const factory AuthEvent.registerJobSeeker({
    required String email,
    required String password,
    required String confirmPassword,
    required String fullName,
    required String officeTitle,
    required String companyName,
    required String city,
    required String passport,
    required String resume,
    required String gender,
    required String phoneNumber,
    
    required String guarantorName,
    required String guarantorEmail,
    required String residentialAddress,
    required String yearsOfExperience,
    required String describeYourRole,
  
    required String dateOFBirth,

    required String role,
    required String description,
    required String startYear,
    required String endYear,
    required String schoolName,
   
    required String certificateObtained,
    required String graduationYear,
  }) = _RegisterJobSeeker;

  // AuthEvent.updateHere(bool value)
}
