import 'dart:async';
import 'dart:io';

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
import 'package:artisan_oga/features/authentication/domain/usecases/login_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_employer_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/register_job_seeker_usecase.dart';
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
      StateUseCase? stateUseCase})
      : _registerEmployerUseCase = registerEmployerUseCase ?? locator(),
        _registerJobSeekerUseCase = registerJobSeekerUseCase ?? locator(),
        _loginUseCase = loginUseCase ?? locator(),
        _countryUseCase = countryUseCase ?? locator(),
        _stateUseCase = stateUseCase ?? locator(),
        super(_Initial()) {
    on<_UpdateSelectedCountry>(_onUpdateSelectedCountry);
    on<_UpdateSelectedCity>(_onUpdateSelectedCity);
    on<_UpdateSelectedGender>(_onUpdateSelectedGender);
    on<_UpdateSelectedCompanyLogo>(_onUpdateSelectedCompanyLogo);
    on<_UpdateSelectedState>(_onUpdateSelectedState);
    on<_UpdateSelectedIsChecked>(_onUpdateSelectedIsChecked);
    on<_RegisterEmployer>(_onRegisterEmployer);
    on<_RegisterJobSeeker>(_onRegisterJobSeeker);
    on<_LoginUser>(_onLoginUser);
    on<_GetCountries>(_onGetCountries);
    on<_GetState>(_onGetState);
  }

  final RegisterEmployerUseCase _registerEmployerUseCase;
  final RegisterJobSeekerUseCase _registerJobSeekerUseCase;
  final LoginUseCase _loginUseCase;
  final CountryUseCase _countryUseCase;
  final StateUseCase _stateUseCase;
  final String selectedGender = '--Selected--';
  final List<String> genders = ['--Selected--', 'Male', 'Female', 'Other'];
  String selectedJobType = "--Selected--";
  String selectedEducationalQualification = "--Selected--";
  List<String> dropdownItemJobType = [
    "--Selected--",
    "Full Time",
    "Tempoary",
    "Contract",
    "Part Time"
  ];
  List<String> educationalQualification = [
    "Primary school",
    "Junior secondary",
    "High school",
    "University",
    "Masters",
    "Post Graduate Edu.",
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
    emit(state.copyWith(country: event.value));
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
      _UpdateSelectedCompanyLogo event, Emitter<AuthState> emit) {
    emit(state.copyWith(file: event.value));
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

    await _registerEmployerUseCase(RegisterEmployerEntity(
            email: event.email,
            password: event.pasword,
            fullName: event.fullName,
            country: state.country ?? '',
            gender: state.gender ?? '',
            city: state.city ?? '',
            state: state.state ?? '',
            isChecked: state.isChecked,
            companyLogo: state.file!,
            companyName: event.companyName,
            phoneNumber: event.phoneNumber,
            officeTitle: event.officeTitle))
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
    final result = await _stateUseCase(state.countryId ?? '');
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
  }

  FutureOr<void> _onRegisterJobSeeker(
      _RegisterJobSeeker event, Emitter<AuthState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));

    await _registerJobSeekerUseCase(RegisterJobSeekerEntity(
            email: event.email,
            password: event.password,
            fullName: event.fullName,
            country: state.country ?? '',
            gender: state.gender ?? '',
            city: state.city ?? '',
            state: state.state ?? '',
            isChecked: state.isChecked,
            passport: state.picture!,
            resume: state.resume!,
            confirmPassword: event.confirmPassword,
            companyName: event.companyName,
            phoneNumber: event.phoneNumber,
            officeTitle: event.officeTitle,
            jobType: state.jobType ?? '',
            skill: state.skills ?? '',
            guarantorEmail: event.guarantorEmail,
            role: event.role,
            guarantorName: event.guarantorName,
            yearsOfExperience: event.yearsOfExperience,
            describeYourRole: '',
            residentialAddress: event.residentialAddress,
            description: event.description,
            startYear: event.startYear,
            endYear: event.endYear,
            educationalQualification: state.educationalQualification ?? '',
            category: state.category ?? '',
            certificateObtained: event.certificateObtained,
            schoolName: event.schoolName,
            dateOFBirth: event.dateOFBirth,
            graduationYear: event.graduationYear))
        .then((value) {
      value.fold((error) => emit(state.copyWith(viewState: ViewState.failure)),
          (result) => emit(state.copyWith(viewState: ViewState.success)));
    });
  }
}
