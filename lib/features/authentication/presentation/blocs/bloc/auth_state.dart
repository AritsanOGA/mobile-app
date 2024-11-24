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
    String? confirmPassword,
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
    @Default(RegisterEmployerEntity(
      email: '',
      password: '',
      companyName: '',
      city: '',
      confirmPassword: '',
      country: '',
      gender: '',
      officeTitle: '',
      phoneNumber: '',
      state: '',
      fullName: '',
      companyLogo: null,
    ))
    @Default(RegisterJobSeekerEntity(
        fullName: '',
        companyName: '',
        state: '',
        city: '',
        confirmPassword: '',
        passport: null,
        resume: null,
        gender: '',
        country: '',
        email: '',
        password: '',
        phoneNumber: '',
        jobType: '',
        guarantorName: '',
        guarantorEmail: '',
        residentialAddress: '',
        streetAddress: '',
        yearsOfExperience: '',
        describeYourRole: '',
        category: '',
        dateOFBirth: '',
        skill: '',
        role: '',
        description: '',
        startYear: '',
        endYear: '',
        schoolName: '',
        educationalQualification: '',
        certificateObtained: '',
        graduationYear: '',
        courseName: '',
        employmentHistory: ''))
    RegisterEmployerEntity registerEmployerRequest,
  //RegisterJobSeekerEntity registerJobSeekerRequest,
    File? resume,
    @Default([]) List<StateResponseEntity> states,
    @Default([]) List<CountryResponseEntity> countries,
    @Default([]) List<CategoryResponseEntity> categoryList,
    @Default([]) List<SkillResponseEntity> skill,
    @Default(false) bool isChecked,
    @Default(ViewState.idle) ViewState viewState,
  }) = _Initial;
}
