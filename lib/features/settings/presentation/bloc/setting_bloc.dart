import 'dart:async';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/settings/domain/entities/activities_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/change_password_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_employer_response_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:artisan_oga/features/settings/domain/entities/notification_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_employer_profile_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:artisan_oga/features/settings/domain/usecases/get_activities_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/get_employer_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/get_jobseeker_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/js_notification_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/update_employer_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/update_job_seeker_usecase.dart';
import 'package:artisan_oga/features/settings/domain/usecases/update_password_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_bloc.freezed.dart';
part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc({
    GetEmployerProfileUsecase? getEmployerProfileUseCase,
    GetJobSeekeProfileUsecase? getJobSeekerProfileUseCase,
    UpdateEmployerUseCase? updateEmployerProfileUseCase,
    UpdateJobSeekerUsecase? updateJobSeekerUseCase,
    ChangePasswordUseCase? updatePasswordUseCase,
    GetJobSeekerNotificationUsecase? getJobSeekerNotificationUsecase,
    GetActivitiesUsecase? getActivitiesUsecase,
  })  : _getEmployerProfileUseCase = getEmployerProfileUseCase ?? locator(),
        _getJobSeekerProfileUseCase = getJobSeekerProfileUseCase ?? locator(),
        _updateEmployerProfileUseCase =
            updateEmployerProfileUseCase ?? locator(),
        _updateJobSeekerUseCase = updateJobSeekerUseCase ?? locator(),
        _updatePasswordUseCase = updatePasswordUseCase ?? locator(),
        _getJobSeekerNotificationUsecase =
            getJobSeekerNotificationUsecase ?? locator(),
        _getActivitiesUsecase = getActivitiesUsecase ?? locator(),
        super(_Initial()) {
    on<_GetJobSeekerProfile>(_onGetJobSeekerProfile);
    on<_GetEmployerProfile>(_onGetEmployerProfile);
    on<_GetActivities>(_onGetActivities);
    on<_GetJobSeekerNotification>(_onGetJobSeekerNotification);
    on<_UpdateJobSeekerProfile>(_onUpdateJobSeekerProfile);
    on<_UpdateEmployerProfile>(_onUpdateEmployerProfile);
    on<_UpdatePassword>(_onUpdatePassword);
    on<_UpdateJobSeekerRequest>(_onUpdateJobSeekerRequest);
    on<_LoadActivities>(_onLoadActivities);
    on<_FilteredActivities>(_onFilterActivities);
  }

  final GetEmployerProfileUsecase _getEmployerProfileUseCase;
  final GetJobSeekeProfileUsecase _getJobSeekerProfileUseCase;
  final UpdateEmployerUseCase _updateEmployerProfileUseCase;
  final UpdateJobSeekerUsecase _updateJobSeekerUseCase;
  final ChangePasswordUseCase _updatePasswordUseCase;
  final GetJobSeekerNotificationUsecase _getJobSeekerNotificationUsecase;
  final GetActivitiesUsecase _getActivitiesUsecase;

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

    final result = await _getJobSeekerProfileUseCase(NoParams());
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

  FutureOr<void> _onGetJobSeekerNotification(
      _GetJobSeekerNotification event, Emitter<SettingState> emit) async {
    emit(state.copyWith(
        jobSeekerNotificationState: JobSeekerNotificationState.loading));

    final result = await _getJobSeekerNotificationUsecase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          jobSeekerNotificationState: JobSeekerNotificationState.failure,
          errorMessage: error.message,
        ),
      ),
      (jsResponse) => emit(
        state.copyWith(
          notification: jsResponse,
          jobSeekerNotificationState: JobSeekerNotificationState.success,
        ),
      ),
    );

    emit(state.copyWith(
        jobSeekerNotificationState: JobSeekerNotificationState.idle));
  }

  FutureOr<void> _onGetActivities(
      _GetActivities event, Emitter<SettingState> emit) async {
    emit(state.copyWith(activitiesState: ActvitiesState.loading));

    final result = await _getActivitiesUsecase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          activitiesState: ActvitiesState.failure,
          errorMessage: error.message,
        ),
      ),
      (jsResponse) => emit(
        state.copyWith(
          activity: jsResponse,
          activitiesState: ActvitiesState.success,
        ),
      ),
    );

    emit(state.copyWith(
        jobSeekerNotificationState: JobSeekerNotificationState.idle));
  }

  FutureOr<void> _onLoadActivities(
      _LoadActivities event, Emitter<SettingState> emit) {
    List<ActivitiesEntity> activities = [
      ActivitiesEntity(status: '0'),
      ActivitiesEntity(status: '1'),
      ActivitiesEntity(status: '2'),
      ActivitiesEntity(status: '3'),
    ];

    emit(state.copyWith(activity: activities, filteredActivity: activities));
  }

  FutureOr<void> _onFilterActivities(
      _FilteredActivities event, Emitter<SettingState> emit) {
    List<ActivitiesEntity> filteredList;
    switch (event.selectedTabIndex) {
      case 0:
        filteredList = state.activity; 
        break;
      case 1:
        filteredList =
            state.activity.where((activity) => activity.status == '0').toList();
        break;
      case 2:
        filteredList =
            state.activity.where((activity) => activity.status == '1').toList();
        break;
      case 3:
        filteredList =
            state.activity.where((activity) => activity.status == '2').toList();
        break;
      case 4:
        filteredList =
            state.activity.where((activity) => activity.status == '3').toList();
        break;
      default:
        filteredList = state.activity;
    }

    emit(state.copyWith(
        filteredActivity: filteredList,
        selectedTabIndex: event.selectedTabIndex));
  }
}
