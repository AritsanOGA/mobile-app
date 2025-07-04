import 'dart:async';
import 'dart:io';

import 'package:artisan_oga/core/services/file_picker_service.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/authentication/domain/entities/auth_result_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/forgot_password_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_data_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_details_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/update_password_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/verify_code_entity.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/check_email_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/check_phone_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/country_useecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/forgot_password_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_category_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_user_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/login_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_employer_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_job_seeker_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/remove_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/search_job_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/skill_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/state_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/update_password_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/verify_code_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/verify_forgot_password_usecase.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/search_job_detals_usecase.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
      {RegisterEmployerUseCase? registerEmployerUseCase,
      RegisterJobSeekerUseCase? registerJobSeekerUseCase,
      LoginUseCase? loginUseCase,
      CountryUseCase? countryUseCase,
      CategoryUseCase? categoryUseCase,
      SkillUseCase? skillUseCase,
      FilePickerService? filePickerService,
      StateUseCase? stateUseCase,
      VerifyCodeUseCase? verifyCodeUseCase,
      VerifyForgotPasswordUseCase? verifyForgotPasswordUseCase,
      UpdatePasswordUseCase? updatePasswordUseCase,
      ForgotPasswordUseCase? forgotPasswordUseCase,
      RemoveUserDataUseCase? removeUserDataUseCase,
      SearchJobDetailUseCase? searchJobDetailUseCase,
      SearchJobUseCase? searchJobUseCase,
      CheckEmailUsecase? checkEmailUseCase,
      CheckPhoneUsecase? checkPhoneUseCase,
      GetUserDataUseCase? getUserUseCase})
      : _registerEmployerUseCase = registerEmployerUseCase ?? locator(),
        _registerJobSeekerUseCase = registerJobSeekerUseCase ?? locator(),
        _loginUseCase = loginUseCase ?? locator(),
        _countryUseCase = countryUseCase ?? locator(),
        _stateUseCase = stateUseCase ?? locator(),
        _categoryUseCase = categoryUseCase ?? locator(),
        _skillUseCase = skillUseCase ?? locator(),
        _filePickerService = filePickerService ?? locator(),
        _verifyCodeUseCase = verifyCodeUseCase ?? locator(),
        _getUserDataUseCase = getUserUseCase ?? locator(),
        _forgotPasswordUseCase = forgotPasswordUseCase ?? locator(),
        _updatePasswordUseCase = updatePasswordUseCase ?? locator(),
        _removeUserDataUseCase = removeUserDataUseCase ?? locator(),
        _searchJobUseCase = searchJobUseCase ?? locator(),
        _searchJobDetailsUseCase = searchJobDetailUseCase ?? locator(),
        _verifyForgotPasswordUseCase = verifyForgotPasswordUseCase ?? locator(),
        _checkEmailUsecase = checkEmailUseCase ?? locator(),
        _checkPhoneUsecase = checkPhoneUseCase ?? locator(),
        super(_Initial()) {
    on<_UpdateSelectedCountry>(_onUpdateSelectedCountry);
    on<_SelectYear>(_onSelectYear);
    on<_UpdateRegisterEmployerRequest>(_onUpdateRegisterEmployerRequest);
    on<_UpdateRegisterJobSeekerRequest>(_onUpdateRegisterJobSeekerRequest);
    on<_UpdateSelectedCity>(_onUpdateSelectedCity);
    on<_UpdateSelectedCategory>(_onUpdateSelectedCategory);
    on<_UpdateSelectedSkill>(_onUpdateSelectedSkill);
    on<_UpdateSkill>(_onUpdateSkill);
    on<_UpdateEmploymentHistory>(_onUpdateEmploymentHistory);
    on<_UpdateSelectedEducationQualification>(
        _onUpdateSelectedEducationQualification);
    on<_UpdateSelectedDate>(_onUpdateSelectedDate);

    on<_UpdateSelectedGender>(_onUpdateSelectedGender);
    on<_UpdateSelectedJobType>(_onUpdateSelectedJobType);
    on<_UpdateSelectedCompanyLogo>(_onUpdateSelectedCompanyLogo);
    on<_SelectCompanyLogo>(_onSselectCompanyLogo);
    on<_SelectPicture>(_onSelectPicture);
    on<_SelectResume>(_onSelectResume);
    on<_SelectTabEvent>(_onSelectTabEvent);
    on<_UpdateSelectedState>(_onUpdateSelectedState);
    on<_UpdateSelectedIsChecked>(_onUpdateSelectedIsChecked);
    on<_RegisterEmployer>(_onRegisterEmployer);
    on<_RegisterJobSeeker>(_onRegisterJobSeeker);
    on<_LoginUser>(_onLoginUser);
    on<_GetCountries>(_onGetCountries);
    on<_GetState>(_onGetState);
    on<_GetCategory>(_onGetCategory);
    on<_GetSkills>(_onGetSkill);
    on<_VerifyCode>(_onVerifyCode);
    on<_CheckEmail>(_onCheckEmail);
    on<_CheckPhone>(_onCheckPhone);
    on<_GetUserData>(_onGetUserData);
    on<_RemoveUserData>(_onRemoveUserData);
    on<_UpdatePassword>(_onUpdatePassword);
    on<_ForgotPassword>(_onForgotPassword);
    on<_verifyForgotPasswordCode>(_onVerifyForgotPasswordCode);
    on<_SearchJobs>(_onSearchJobs);
    on<_SearchJobDetails>(_onSearchJobDetails);
  }

  final RegisterEmployerUseCase _registerEmployerUseCase;
  final RegisterJobSeekerUseCase _registerJobSeekerUseCase;
  final LoginUseCase _loginUseCase;
  final CountryUseCase _countryUseCase;
  final CategoryUseCase _categoryUseCase;
  final SkillUseCase _skillUseCase;
  final StateUseCase _stateUseCase;
  final FilePickerService _filePickerService;
  final VerifyCodeUseCase _verifyCodeUseCase;
  final VerifyForgotPasswordUseCase _verifyForgotPasswordUseCase;
  final GetUserDataUseCase _getUserDataUseCase;
  final UpdatePasswordUseCase _updatePasswordUseCase;
  final ForgotPasswordUseCase _forgotPasswordUseCase;
  final RemoveUserDataUseCase _removeUserDataUseCase;
  final SearchJobUseCase _searchJobUseCase;
  final SearchJobDetailUseCase _searchJobDetailsUseCase;
  final CheckEmailUsecase _checkEmailUsecase;
  final CheckPhoneUsecase _checkPhoneUsecase;

  FutureOr<void> _onUpdateSelectedCountry(
      _UpdateSelectedCountry event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      country: event.value,
    ));
  }

  FutureOr<void> _onUpdateSelectedCity(
      _UpdateSelectedCity event, Emitter<AuthState> emit) {
    emit(state.copyWith(city: event.value));
  }

  FutureOr<void> _onUpdateSelectedGender(
      _UpdateSelectedGender event, Emitter<AuthState> emit) {
    emit(state.copyWith(gender: event.value));
  }

  FutureOr<void> _onSelectYear(_SelectYear event, Emitter<AuthState> emit) {
    emit(state.copyWith(selectedYear: event.index));
  }

  FutureOr<void> _onUpdateSelectedCompanyLogo(
      _UpdateSelectedCompanyLogo event, Emitter<AuthState> emit) async {
    final image = await _filePickerService.pickImage();
    if (image == null) return;
    emit(state.copyWith(file: File(image)));
  }

  FutureOr<void> _onUpdateSelectedState(
      _UpdateSelectedState event, Emitter<AuthState> emit) {
    emit(state.copyWith(state: event.value));
  }

  FutureOr<void> _onUpdateSelectedIsChecked(
      _UpdateSelectedIsChecked event, Emitter<AuthState> emit) {
    emit(state.copyWith(isChecked: !event.value));
  }

  FutureOr<void> _onRegisterEmployer(
      _RegisterEmployer event, Emitter<AuthState> emit) async {
    emit(state.copyWith(employerSignUpState: EmployerSignUpState.loading));

    await _registerEmployerUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              employerSignUpState: EmployerSignUpState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
              employerSignUpState: EmployerSignUpState.success)));
    });

    emit(state.copyWith(employerSignUpState: EmployerSignUpState.idle));
  }

  FutureOr<void> _onLoginUser(_LoginUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(employerLoginState: EmployerLoginState.loading));

    final result = await _loginUseCase(event.param);

    result.fold(
        (error) => emit(state.copyWith(
            employerLoginState: EmployerLoginState.failure,
            errorMessage: error.message)),
        (result) => emit(state.copyWith(
            employerLoginState: EmployerLoginState.success,
            authEntity: result)));
    emit(state.copyWith(employerLoginState: EmployerLoginState.idle));
  }

  FutureOr<void> _onGetState(_GetState event, Emitter<AuthState> emit) async {
    emit(state.copyWith(getStateState: GetStateState.loading));
    final result = await _stateUseCase(event.id);
    result.fold(
      (error) => emit(
        state.copyWith(
          getStateState: GetStateState.failure,
          errorMessage: error.message,
        ),
      ),
      (states) => emit(
        state.copyWith(
          states: states,
          getStateState: GetStateState.success,
        ),
      ),
    );
    emit(state.copyWith(getStateState: GetStateState.idle));
  }

  FutureOr<void> _onGetCountries(
      _GetCountries event, Emitter<AuthState> emit) async {
    if (state.countries.isNotEmpty) return;
    emit(state.copyWith(getCountryState: GetCountryState.loading));
    final result = await _countryUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getCountryState: GetCountryState.failure,
          errorMessage: error.message,
        ),
      ),
      (countries) => emit(
        state.copyWith(
          countries: countries,
          getCountryState: GetCountryState.success,
        ),
      ),
    );
    emit(state.copyWith(getCountryState: GetCountryState.idle));
  }

  FutureOr<void> _onRegisterJobSeeker(
      _RegisterJobSeeker event, Emitter<AuthState> emit) async {
    emit(state.copyWith(jobSeekerSignUpState: JobSeekerSignUpState.loading));

    await _registerJobSeekerUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              jobSeekerSignUpState: JobSeekerSignUpState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
                jobSeekerSignUpState: JobSeekerSignUpState.success,
              )));
    });
    emit(state.copyWith(jobSeekerSignUpState: JobSeekerSignUpState.idle));
  }

  FutureOr<void> _onUpdateSelectedEducationQualification(
      _UpdateSelectedEducationQualification event, Emitter<AuthState> emit) {
    emit(state.copyWith(educationalQualification: event.value));
  }

  FutureOr<void> _onUpdateEmploymentHistory(
      _UpdateEmploymentHistory event, Emitter<AuthState> emit) {
    emit(state.copyWith(employmentHistory: event.value));
  }

  FutureOr<void> _onGetCategory(event, Emitter<AuthState> emit) async {
    emit(state.copyWith(getCategoryState: GetCategoryState.loading));
    final result = await _categoryUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getCategoryState: GetCategoryState.failure,
          errorMessage: error.message,
        ),
      ),
      (category) => emit(
        state.copyWith(
          categoryList: category,
          getCategoryState: GetCategoryState.success,
        ),
      ),
    );
    emit(state.copyWith(getCategoryState: GetCategoryState.idle));
  }

  FutureOr<void> _onGetSkill(event, Emitter<AuthState> emit) async {
    emit(state.copyWith(getSkillState: GetSkillState.loading));
    final result = await _skillUseCase(event.id);
    result.fold(
      (error) => emit(
        state.copyWith(
          getSkillState: GetSkillState.failure,
          errorMessage: error.message,
        ),
      ),
      (skills) => emit(
        state.copyWith(
          skill: skills,
          getSkillState: GetSkillState.success,
        ),
      ),
    );
    emit(state.copyWith(getSkillState: GetSkillState.idle));
  }

  FutureOr<void> _onUpdateSelectedSkill(
      _UpdateSelectedSkill event, Emitter<AuthState> emit) {
    emit(state.copyWith(skills: event.value));
  }

  FutureOr<void> _onUpdateSelectedCategory(
      _UpdateSelectedCategory event, Emitter<AuthState> emit) {
    emit(state.copyWith(category: event.value));
  }

  FutureOr<void> _onSselectCompanyLogo(
      _SelectCompanyLogo event, Emitter<AuthState> emit) async {
    final image = await _filePickerService.pickImage();
    if (image == null) return;
    emit(state.copyWith(file: File(image)));
    if (image.endsWith('.png') || image.endsWith('.jpg')) {
      emit(state.copyWith(picture: File(image)));

      print('Selected file: ${image}');
    } else {
      print('extension $image');
      ToastUtils.showRedToast('Only PNG and JPG images are allowed.');
      print('inavlid tyoe');
    }
  }

  FutureOr<void> _onUpdateSelectedDate(
      _UpdateSelectedDate event, Emitter<AuthState> emit) {
    emit(state.copyWith(dateOFBirths: event.value));
  }

  FutureOr<void> _onSelectPicture(
      _SelectPicture event, Emitter<AuthState> emit) async {
    final image = await _filePickerService.pickImage();
    if (image == null) return;
    if (image.endsWith('.png') || image.endsWith('.jpg')) {
      emit(state.copyWith(picture: File(image)));
      print('Selected file: ${image}');
    } else {
      print('extension $image');
      ToastUtils.showRedToast('Only PNG and JPG images are allowed.');
      print('inavlid tyoe');
    }
  }

  FutureOr<void> _onSelectResume(
      _SelectResume event, Emitter<AuthState> emit) async {
    final resumeFile = await _filePickerService.pickFiles(['pdf']);

    if (resumeFile == null) return;
    emit(state.copyWith(resume: File(resumeFile)));
  }

  FutureOr<void> _onUpdateRegisterEmployerRequest(
      _UpdateRegisterEmployerRequest event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        registerEmployerRequest: event.registerEmployerRequest,
      ),
    );
  }

  FutureOr<void> _onVerifyCode(
      _VerifyCode event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
        employerVerifyCodeState: EmployerVerifyCodeState.loading));

    await _verifyCodeUseCase(event.value).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              employerVerifyCodeState: EmployerVerifyCodeState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
              employerVerifyCodeState: EmployerVerifyCodeState.success)));
    });
    emit(state.copyWith(employerVerifyCodeState: EmployerVerifyCodeState.idle));
  }

  FutureOr<void> _onUpdateRegisterJobSeekerRequest(
      _UpdateRegisterJobSeekerRequest event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(registerJobSeekerRequest: event.registerJobSeekerRequest),
    );
  }

  FutureOr<void> _onUpdateSelectedJobType(
      _UpdateSelectedJobType event, Emitter<AuthState> emit) {
    emit(state.copyWith(jobType: event.value));
  }

  FutureOr<void> _onGetUserData(
    _GetUserData event,
    Emitter<AuthState> emit,
  ) async {
    await _getUserDataUseCase(NoParams());
  }

  FutureOr<void> _onRemoveUserData(
    _RemoveUserData event,
    Emitter<AuthState> emit,
  ) async {
    await _removeUserDataUseCase(NoParams());
  }

  FutureOr<void> _onSelectTabEvent(
      _SelectTabEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }

  FutureOr<void> _onUpdatePassword(
      _UpdatePassword event, Emitter<AuthState> emit) async {
    emit(state.copyWith(changePasswordState: ChangePasswordState.loading));

    await _updatePasswordUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              changePasswordState: ChangePasswordState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
              changePasswordState: ChangePasswordState.success)));
    });
    emit(state.copyWith(changePasswordState: ChangePasswordState.idle));
  }

  FutureOr<void> _onForgotPassword(
      _ForgotPassword event, Emitter<AuthState> emit) async {
    emit(state.copyWith(forgotPasswordState: ForgotPasswordState.loading));

    await _forgotPasswordUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              forgotPasswordState: ForgotPasswordState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
              forgotPasswordState: ForgotPasswordState.success)));
    });
    emit(state.copyWith(forgotPasswordState: ForgotPasswordState.idle));
  }

  FutureOr<void> _onVerifyForgotPasswordCode(
      _verifyForgotPasswordCode event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
        employerVerifyCodeState: EmployerVerifyCodeState.loading));

    await _verifyForgotPasswordUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              employerVerifyCodeState: EmployerVerifyCodeState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
              employerVerifyCodeState: EmployerVerifyCodeState.success)));
    });
    emit(state.copyWith(employerVerifyCodeState: EmployerVerifyCodeState.idle));
  }

  FutureOr<void> _onSearchJobs(
      _SearchJobs event, Emitter<AuthState> emit) async {
    emit(state.copyWith(searchJobState: SearchJobState.loading));
    final result = await _searchJobUseCase(event.value);
    result.fold(
      (error) => emit(
        state.copyWith(
          searchJobState: SearchJobState.failure,
          errorMessage: error.message,
        ),
      ),
      (searchJobEntity) => emit(
        state.copyWith(
          searchJobEntity: searchJobEntity,
          searchJobState: SearchJobState.success,
        ),
      ),
    );
    emit(state.copyWith(searchJobState: SearchJobState.idle));
  }

  FutureOr<void> _onUpdateSkill(_UpdateSkill event, Emitter<AuthState> emit) {
    emit(state.copyWith(singleSkill: event.value));
  }

  FutureOr<void> _onSearchJobDetails(
      _SearchJobDetails event, Emitter<AuthState> emit) async {
    emit(state.copyWith(searchJobDetailState: SearchJobDetailState.loading));
    final result = await _searchJobDetailsUseCase(event.jobId);
    result.fold(
      (error) => emit(
        state.copyWith(
          searchJobDetailState: SearchJobDetailState.failure,
          errorMessage: error.message,
        ),
      ),
      (searchJobDetail) => emit(
        state.copyWith(
          searchJobDetail: searchJobDetail,
          searchJobDetailState: SearchJobDetailState.success,
        ),
      ),
    );
    emit(state.copyWith(searchJobDetailState: SearchJobDetailState.idle));
  }

  FutureOr<void> _onCheckEmail(
      _CheckEmail event, Emitter<AuthState> emit) async {
    emit(state.copyWith(checkEmailState: ViewState.loading));
    final result = await _checkEmailUsecase(event.email);
    result.fold(
      (error) => emit(
        state.copyWith(
          checkEmailState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (email) => emit(
        state.copyWith(
          isEmail: email,
          checkEmailState: ViewState.success,
        ),
      ),
    );
    emit(state.copyWith(checkEmailState: ViewState.idle));
  }

  FutureOr<void> _onCheckPhone(
      _CheckPhone event, Emitter<AuthState> emit) async {
    emit(state.copyWith(checkPhoneState: ViewState.loading));
    final result = await _checkPhoneUsecase(event.phone);
    result.fold(
      (error) => emit(
        state.copyWith(
          checkPhoneState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (phone) => emit(
        state.copyWith(
          isPhone: phone,
          checkPhoneState: ViewState.success,
        ),
      ),
    );
    emit(state.copyWith(checkPhoneState: ViewState.idle));
  }
}
