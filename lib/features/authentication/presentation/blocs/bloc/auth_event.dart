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
  const factory AuthEvent.updateSelectedCompanyLogo(File value) =
      _UpdateSelectedCompanyLogo;
  const factory AuthEvent.updateSelectedIsChecked(bool value) =
      _UpdateSelectedIsChecked;
  const factory AuthEvent.registerUser(
      {required String fullName,
      required String officeTitle,
      required String companyName,
      required String phoneNumber,
      required String email,
      required String pasword,
      }) = _RegisterUser;
}
