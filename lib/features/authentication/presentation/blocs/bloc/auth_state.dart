part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    @Default('--Select--') String gender,
    CountryResponseEntity? country,
    StateResponseEntity? state,
    String? jsCountry,
    File? file,
    String? errorMessage,
    String? confirmPassword,
    String? countryId,
    String? jsGender,
    @Default(0) int selectedIndex,
    @Default('--Select--') String jobType,
    String? jsState,
    String? city,
    File? picture,
    @Default('--Select--') String educationalQualification,
    String? dateOFBirth,
    String? startYear,
    String? endYear,
    @Default('--Select--') String employmentHistory,
    @Default([]) List<SkillResponseEntity> skills,
    CategoryResponseEntity? category,
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
    RegisterEmployerEntity registerEmployerRequest,
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
        employmentHistory: '',
        guarantorPhoneNumber: ''))
    RegisterJobSeekerEntity registerJobSeekerRequest,
    File? resume,
    @Default([]) List<StateResponseEntity> states,
    @Default(['--Select--', 'Male', 'Female', 'Other']) List<String> genders,
    @Default([
      '--Select--',
      'No Education',
      'FLSC',
      'WAEC',
      'NECO',
      'GCE',
      'B.sc /B.Eng / B.Ed',
      'M.sc',
      'Phd',
      'B. Tech'
    ])
    List<String> levelOfEducationList,
    @Default(['--Select--', 'Employment History', 'No Employment History'])
    List<String> employmentHistoryList,
    @Default(["--Select--", "Full Time", "Temporary", "Contract", "Part Time"])
    List<String> jobTypeList,
    @Default([]) List<CountryResponseEntity> countries,
    @Default([]) List<CategoryResponseEntity> categoryList,
    @Default([]) List<SkillResponseEntity> skill,
    @Default(false) bool isChecked,
    @Default(EmployerLoginState.idle) EmployerLoginState employerLoginState,
    @Default(JobSeekerLoginState.idle) JobSeekerLoginState jobSeekerLoginState,
    @Default(EmployerSignUpState.idle) EmployerSignUpState employerSignUpState,
    @Default(JobSeekerSignUpState.idle)
    JobSeekerSignUpState jobSeekerSignUpState,
    @Default(GetCategoryState.idle) GetCategoryState getCategoryState,
    @Default(GetSkillState.idle) GetSkillState getSkillState,
    @Default(GetCountryState.idle) GetCountryState getCountryState,
    @Default(GetStateState.idle) GetStateState getStateState,
    @Default(EmployerVerifyCodeState.idle)
    EmployerVerifyCodeState employerVerifyCodeState,
    @Default(JobSeekerVerifyCodeState.idle)
    JobSeekerVerifyCodeState jobSeekerVerifyCodeState,
  }) = _Initial;
}
