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
import 'package:artisan_oga/features/authentication/domain/usecases/country_useecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_category_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/login_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_employer_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_job_seeker_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/skill_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/state_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

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
      StateUseCase? stateUseCase})
      : _registerEmployerUseCase = registerEmployerUseCase ?? locator(),
        _registerJobSeekerUseCase = registerJobSeekerUseCase ?? locator(),
        _loginUseCase = loginUseCase ?? locator(),
        _countryUseCase = countryUseCase ?? locator(),
        _stateUseCase = stateUseCase ?? locator(),
        _categoryUseCase = categoryUseCase ?? locator(),
        _skillUseCase = skillUseCase ?? locator(),
        _filePickerService = filePickerService ?? locator(),
        super(_Initial()) {
    on<_UpdateSelectedCountry>(_onUpdateSelectedCountry);
    on<_UpdateRegisterEmployerRequest>(_onUpdateRegisterEmployerRequest);
    on<_UpdateSelectedCity>(_onUpdateSelectedCity);
    on<_UpdateSelectedCategory>(_onUpdateSelectedCategory);
    on<_UpdateSelectedSkill>(_onUpdateSelectedSkill);
    on<_UpdateEmploymentHistory>(_onUpdateEmploymentHistory);
    on<_UpdateSelectedEducationQualification>(
        _onUpdateSelectedEducationQualification);
    on<_UpdateSelectedGender>(_onUpdateSelectedGender);
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
  }

  final RegisterEmployerUseCase _registerEmployerUseCase;
  final RegisterJobSeekerUseCase _registerJobSeekerUseCase;
  final LoginUseCase _loginUseCase;
  final CountryUseCase _countryUseCase;
  final CategoryUseCase _categoryUseCase;
  final SkillUseCase _skillUseCase;
  final StateUseCase _stateUseCase;
  final FilePickerService _filePickerService;

  final String selectedGender = '--Selected--';
  final List<String> genders = ['--Selected--', 'Male', 'Female', 'Other'];
  String selectedJobType = "--Select--";
  String selectedEducationalQualification = "--Selected--";
  List<String> dropdownItemJobType = [
    "--Select--",
    "Full Time",
    "Tempoary",
    "Contract",
    "Part Time"
  ];
  List<String> employmentHistory = [
    'Employment History',
    'No Employment History',
  ];
  // List<String> educationalQualification = [
  //   "Primary school",
  //   "Junior secondary",
  //   "High school",
  //   "University",
  //   "Masters",
  //   "Post Graduate Edu.",
  // ];
  List<String> educationalQualification = [
    'No Education',
    'FLSC',
    'WAEC',
    'NECO',
    'GCE',
    'B.sc',
    'M.sc',
    'Phd',
    'B. Tech',
  ];
  DateTime? selectedDate;

  final dateField = TextEditingController(text: "--Select date--");

  void datePicker(context) async {
    final DateTime? datePicked = await showDatePicker(
      context: context,

      initialDate: selectedDate ?? DateTime.now(), // Default to current date
      firstDate: DateTime(2000), // Earliest selectable date
      lastDate: DateTime(2101), // Latest selectable date
    );
    dateField.text =
        '${datePicked!.month}-${datePicked.day}-${datePicked.year}';
    print('date ${dateField.text}');
  }

  void setGender() {}
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

    await _registerEmployerUseCase(event.param
            // RegisterEmployerEntity(
            //       email: event.email,
            //       password: event.pasword,
            //       fullName: event.fullName,
            //       country: state.country?.name ?? '',
            //       gender: state.gender ?? '',
            //       city: event.city,
            //       state: state.state?.name ?? '',
            //       companyLogo: state.file!,
            //       companyName: event.companyName,
            //       phoneNumber: event.phoneNumber,
            //       officeTitle: event.officeTitle,
            //       confirmPassword: event.confirmPassword)
            )
        .then((value) {
      value.fold((error) => emit(state.copyWith(viewState: ViewState.failure)),
          (result) => emit(state.copyWith(viewState: ViewState.success)));
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

    await _registerJobSeekerUseCase(event.param
            // RegisterJobSeekerEntity(
            //       email: event.email,
            //       password: event.password,
            //       fullName: event.fullName,
            //       country: state.country ?? '',
            //       gender: state.gender ?? '',
            //       city: state.city ?? '',
            //       state: state.state ?? '',
            //       isChecked: state.isChecked,
            //       passport: state.picture!,
            //       resume: state.resume!,
            //       confirmPassword: event.confirmPassword,
            //       companyName: event.companyName,
            //       phoneNumber: event.phoneNumber,
            //       officeTitle: event.officeTitle,
            //       jobType: state.jobType ?? '',
            //       skill: state.skills ?? '',
            //       guarantorEmail: event.guarantorEmail,
            //       role: event.role,
            //       guarantorName: event.guarantorName,
            //       yearsOfExperience: event.yearsOfExperience,
            //       describeYourRole: '',
            //       residentialAddress: event.residentialAddress,
            //       description: event.description,
            //       startYear: event.startYear,
            //       endYear: event.endYear,
            //       educationalQualification: state.educationalQualification ?? '',
            //       category: state.category ?? '',
            //       certificateObtained: event.certificateObtained,
            //       schoolName: event.schoolName,
            //       dateOFBirth: event.dateOFBirth,
            //       graduationYear: event.graduationYear)
            )
        .then((value) {
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
    print('state ${state.states}');
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
    final image = await _filePickerService.pickImage();
    if (image == null) return;
    emit(state.copyWith(resume: File(image)));
  }

  FutureOr<void> _onUpdateRegisterEmployerRequest(
      _UpdateRegisterEmployerRequest event, Emitter<AuthState> emit) {
    emit(
      state.copyWith(
        registerEmployerRequest: event.registerEmployerRequest,
      ),
    );
  }
}
