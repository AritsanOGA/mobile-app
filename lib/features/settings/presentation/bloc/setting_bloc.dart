import 'dart:async';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/settings/domain/entities/change_password_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_employer_response_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_employer_profile_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:artisan_oga/features/settings/domain/usecases/get_employer_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/get_jobseeker_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/update_employer_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/update_job_seeker_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/update_password_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc({
    GetEmployerProfileUsecase? getEmployerProfileUseCase,
    GetJobSeekeProfileUsecase? getJobSeekerProfileUseCase,
    UpdateEmployerUseCase? updateEmployerProfileUseCase,
    UpdateJobSeekerUsecase? updateJobSeekerUseCase,
    ChangePasswordUseCase? updatePasswordUseCase,
  })  : _getEmployerProfileUseCase = getEmployerProfileUseCase ?? locator(),
        _getJobSeekerProfileUseCase = getJobSeekerProfileUseCase ?? locator(),
        _updateEmployerProfileUseCase =
            updateEmployerProfileUseCase ?? locator(),
        _updateJobSeekerUseCase = updateJobSeekerUseCase ?? locator(),
        _updatePasswordUseCase = updatePasswordUseCase ?? locator(),
        super(_Initial()) {
    on<_GetJobSeekerProfile>(_onGetJobSeekerProfile);
    on<_GetEmployerProfile>(_onGetEmployerProfile);
    on<_UpdateJobSeekerProfile>(_onUpdateJobSeekerProfile);
    on<_UpdateEmployerProfile>(_onUpdateEmployerProfile);
    on<_UpdatePassword>(_onUpdatePassword);
    on<_UpdateJobSeekerRequest>(_onUpdateJobSeekerRequest);
  }

  final GetEmployerProfileUsecase _getEmployerProfileUseCase;
  final GetJobSeekeProfileUsecase _getJobSeekerProfileUseCase;
  final UpdateEmployerUseCase _updateEmployerProfileUseCase;
  final UpdateJobSeekerUsecase _updateJobSeekerUseCase;
  final ChangePasswordUseCase _updatePasswordUseCase;

  FutureOr<void> _onGetEmployerProfile(
      _GetEmployerProfile event, Emitter<SettingState> emit) async {
    emit(state.copyWith(
        getEmployerProfileState: GetEmployerProfileState.loading));

    final result = await _getEmployerProfileUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getEmployerProfileState: GetEmployerProfileState.failure,
          errorMessage: error.message,
        ),
      ),
      (employerResponse) => emit(
        state.copyWith(
          getEmployerResponseEntity: employerResponse,
          getEmployerProfileState: GetEmployerProfileState.success,
        ),
      ),
    );
    emit(state.copyWith(getEmployerProfileState: GetEmployerProfileState.idle));
  }

  FutureOr<void> _onGetJobSeekerProfile(
      _GetJobSeekerProfile event, Emitter<SettingState> emit) async {
    emit(state.copyWith(
        getJobSeekerProfileState: GetJobSeekerProfileState.loading));

  final result =  await _getJobSeekerProfileUseCase(NoParams());
        result.fold(
      (error) => emit(
        state.copyWith(
          getJobSeekerProfileState: GetJobSeekerProfileState.failure,
          errorMessage: error.message,
        ),
      ),
      (jsResponse) => emit(
        state.copyWith(
          getJobSeekerResponseEntity: jsResponse,
          getJobSeekerProfileState: GetJobSeekerProfileState.success,
        ),
      ),
    );

    emit(state.copyWith(
        getJobSeekerProfileState: GetJobSeekerProfileState.idle));
  }

  FutureOr<void> _onUpdateJobSeekerProfile(
      _UpdateJobSeekerProfile event, Emitter<SettingState> emit) async {
    emit(state.copyWith(
        updateJobSeekerProfileState: UpdateJobSeekerProfileState.loading));

    await _updateJobSeekerUseCase(event.entity).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              updateJobSeekerProfileState: UpdateJobSeekerProfileState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
              updateJobSeekerProfileState:
                  UpdateJobSeekerProfileState.success)));
    });

    emit(state.copyWith(
        updateJobSeekerProfileState: UpdateJobSeekerProfileState.idle));
  }

  FutureOr<void> _onUpdateEmployerProfile(
      _UpdateEmployerProfile event, Emitter<SettingState> emit) async {
    emit(state.copyWith(
        updateEmployerProfileState: UpdateEmployerProfileState.loading));

    await _updateEmployerProfileUseCase(event.entity).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              updateEmployerProfileState: UpdateEmployerProfileState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
              updateEmployerProfileState: UpdateEmployerProfileState.success)));
    });

    emit(state.copyWith(
        updateEmployerProfileState: UpdateEmployerProfileState.idle));
  }

  FutureOr<void> _onUpdatePassword(
      _UpdatePassword event, Emitter<SettingState> emit) async {
    emit(state.copyWith(updatePasswordState: UpdatePasswordState.loading));

    await _updatePasswordUseCase(event.entity).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              updatePasswordState: UpdatePasswordState.failure,
              errorMessage: error.message)),
          (result) => emit(state.copyWith(
              updatePasswordState: UpdatePasswordState.success)));
    });

    emit(state.copyWith(updatePasswordState: UpdatePasswordState.idle));
  }

  FutureOr<void> _onUpdateJobSeekerRequest(
      _UpdateJobSeekerRequest event, Emitter<SettingState> emit) {
    //  emit(
    //     state.copyWith(updateJobSeekerRequest: event.registerJobSeekerRequest),
    //   );
  }
}
