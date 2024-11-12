import 'dart:async';
import 'dart:io';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/signup_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/country_useecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/login_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/signup_usecases.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/state_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
      {SignupUseCase? signupUseCase,
      LoginUseCase? loginUseCase,
      CountryUseCase? countryUseCase,
      StateUseCase? stateUseCase})
      : _signupUseCase = signupUseCase ?? locator(),
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
    on<_RegisterUser>(_onRegisterUser);
    on<_LoginUser>(_onLoginUser);
    on<_GetCountries>(_onGetCountries);
    on<_GetState>(_onGetState);
  }

  final SignupUseCase _signupUseCase;
  final LoginUseCase _loginUseCase;
  final CountryUseCase _countryUseCase;
  final StateUseCase _stateUseCase;

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

  FutureOr<void> _onRegisterUser(
      _RegisterUser event, Emitter<AuthState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));

    await _signupUseCase(SignupEntity(
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
}
