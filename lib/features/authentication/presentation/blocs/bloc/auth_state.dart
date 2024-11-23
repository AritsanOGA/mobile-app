part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    String? gender,
    CountryResponseEntity? country,
    StateResponseEntity? state,
    String? jsCountry,
    File? file,
    String? errorMessage,
    String? countryId,
    String? jsGender,
    String? jobType,
    String? jsState,
    String? city,
    File? picture,
    String? educationalQualification,
    String? dateOFBirth,
    String? startYear,
    String? endYear,
    String? employmentHistory,
    CategoryResponseEntity? category,
    SkillResponseEntity? skills,
    File? resume,
    @Default([]) List<StateResponseEntity> states,
    @Default([]) List<CountryResponseEntity> countries,
    @Default([]) List<CategoryResponseEntity> categoryList,
    @Default([]) List<SkillResponseEntity> skill,
    @Default(false) bool isChecked,
    @Default(ViewState.idle) ViewState viewState,
  }) = _Initial;
}
