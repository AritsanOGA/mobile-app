import 'dart:async';
import 'dart:io';
import 'package:artisan_oga/core/services/file_picker_service.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/verify_code_entity.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/country_useecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_category_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_user_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/login_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_employer_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_job_seeker_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/skill_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/state_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/verify_code_usecase.dart';
import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

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
        super(_Initial()) {
    on<_UpdateSelectedCountry>(_onUpdateSelectedCountry);
    on<_UpdateRegisterEmployerRequest>(_onUpdateRegisterEmployerRequest);
    on<_UpdateRegisterJobSeekerRequest>(_onUpdateRegisterJobSeekerRequest);
    on<_UpdateSelectedCity>(_onUpdateSelectedCity);
    on<_UpdateSelectedCategory>(_onUpdateSelectedCategory);
    on<_UpdateSelectedSkill>(_onUpdateSelectedSkill);
    on<_UpdateEmploymentHistory>(_onUpdateEmploymentHistory);
    on<_UpdateSelectedEducationQualification>(
        _onUpdateSelectedEducationQualification);
    on<_UpdateSelectedGender>(_onUpdateSelectedGender);
    on<_UpdateSelectedJobType>(_onUpdateSelectedJobType);
    on<_UpdateSelectedCompanyLogo>(_onUpdateSelectedCompanyLogo);
    on<_SelectCompanyLogo>(_onSselectCompanyLogo);
    on<_SelectPassport>(_onSelectPassport);
    on<_SelectResume>(_onSelectResume);

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
    on<_GetUserData>(_onGetUserData);
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
  final GetUserDataUseCase _getUserDataUseCase;

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
    emit(state.copyWith(isChecked: event.value));
  }

  FutureOr<void> _onRegisterEmployer(
      _RegisterEmployer event, Emitter<AuthState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));

    await _registerEmployerUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(viewState: ViewState.failure)),
          (result) => emit(state.copyWith(
              viewState: ViewState.success,
              successType: SuccessType.registration)));
    });
  }

  FutureOr<void> _onLoginUser(_LoginUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));

    await _loginUseCase(event.param).then((value) {
      value.fold((error) => emit(state.copyWith(viewState: ViewState.failure)),
          (result) => emit(state.copyWith(viewState: ViewState.success)));
    });
  }

  FutureOr<void> _onGetState(_GetState event, Emitter<AuthState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _stateUseCase(event.id);
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (states) => emit(
        state.copyWith(
          states: states,
          viewState: ViewState.success,
        ),
      ),
    );
    print('state ${state.states}');
  }

  FutureOr<void> _onGetCountries(
      _GetCountries event, Emitter<AuthState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _countryUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (countries) => emit(
        state.copyWith(
          countries: countries,
          viewState: ViewState.success,
        ),
      ),
    );
    print('cou${state.countries}');
  }

  FutureOr<void> _onRegisterJobSeeker(
      _RegisterJobSeeker event, Emitter<AuthState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));

    await _registerJobSeekerUseCase(event.param).then((value) {
      value.fold((error) => emit(state.copyWith(viewState: ViewState.failure)),
          (result) => emit(state.copyWith(viewState: ViewState.success)));
    });
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
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _categoryUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (category) => emit(
        state.copyWith(
          categoryList: category,
          viewState: ViewState.success,
        ),
      ),
    );
    print('state ${state.states}');
  }

  FutureOr<void> _onGetSkill(event, Emitter<AuthState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _skillUseCase(event.id);
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (skills) => emit(
        state.copyWith(
          skill: skills,
          viewState: ViewState.success,
        ),
      ),
    );
    print('skill ${state.states}');
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
  }

  FutureOr<void> _onSelectPassport(
      _SelectPassport event, Emitter<AuthState> emit) async {
    final image = await _filePickerService.pickImage();
    if (image == null) return;
    emit(state.copyWith(picture: File(image)));
  }

  FutureOr<void> _onSelectResume(
      _SelectResume event, Emitter<AuthState> emit) async {
    final resumeFile = await _filePickerService.pickFiles(['pdf']);
    print('fileeee $resumeFile');
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
    emit(state.copyWith(viewState: ViewState.loading));

    await _verifyCodeUseCase(event.value).then((value) {
      value.fold((error) => emit(state.copyWith(viewState: ViewState.failure)),
          (result) => emit(state.copyWith(viewState: ViewState.success)));
    });
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
}
