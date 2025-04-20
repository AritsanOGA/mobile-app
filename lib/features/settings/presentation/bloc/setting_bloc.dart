import 'dart:async';
import 'dart:io';

import 'package:artisan_oga/core/services/file_picker_service.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_category_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/skill_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/state_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_profile_usecase.dart';
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
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_bloc.freezed.dart';
part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc({
    StateUseCase? stateUseCase,
    CategoryUseCase? categoryUseCase,
    FilePickerService? filePickerService,
    SkillUseCase? skillUseCase,
    GetEmployerProfileUsecase? getEmployerProfileUseCase,
    GetJobSeekeProfileUsecase? getJobSeekerProfileUseCase,
    UpdateEmployerUseCase? updateEmployerProfileUseCase,
    UpdateJobSeekerUsecase? updateJobSeekerUseCase,
    ChangePasswordUseCase? updatePasswordUseCase,
    GetJobSeekerNotificationUsecase? getJobSeekerNotificationUsecase,
    GetActivitiesUsecase? getActivitiesUsecase,
    CandidateProfileUseCase? candidateProfileUsecase,
  })  : _getEmployerProfileUseCase = getEmployerProfileUseCase ?? locator(),
        _getJobSeekerProfileUseCase = getJobSeekerProfileUseCase ?? locator(),
        _updateEmployerProfileUseCase =
            updateEmployerProfileUseCase ?? locator(),
        _updateJobSeekerUseCase = updateJobSeekerUseCase ?? locator(),
        _updatePasswordUseCase = updatePasswordUseCase ?? locator(),
        _getJobSeekerNotificationUsecase =
            getJobSeekerNotificationUsecase ?? locator(),
        _getActivitiesUsecase = getActivitiesUsecase ?? locator(),
        _skillUseCase = skillUseCase ?? locator(),
        _categoryUseCase = categoryUseCase ?? locator(),
        _stateUseCase = stateUseCase ?? locator(),
        _filePickerService = filePickerService ?? locator(),
        _candidateProfileUseCase = candidateProfileUsecase ?? locator(),
        super(_Initial()) {
    on<_GetState>(_onGetState);
    on<_GetCategory>(_onGetCategory);
    on<_GetSkills>(_onGetSkill);
    on<_UpdateState>(_onUpdateState);
    on<_UpdateSelectedCategory>(_onUpdateSelectedCategory);
    on<_UpdateSelectedSkill>(_onUpdateSelectedSkill);
    on<_UpdateSelectedJobType>(_onUpdateSelectedJobType);
    on<_UpdateSelectedCompensationType>(_onUpdateSelectedCompensationType);
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
    on<_SelectPicture>(_onSelectPicture);
    on<_SelectResume>(_onSelectResume);
    on<_UpdateSelectedDate>(_onUpdateSelectedDate);
    on<_GetCandidateProfile>(_onGetCandidateProfile);
  }

  final GetEmployerProfileUsecase _getEmployerProfileUseCase;
  final GetJobSeekeProfileUsecase _getJobSeekerProfileUseCase;
  final UpdateEmployerUseCase _updateEmployerProfileUseCase;
  final UpdateJobSeekerUsecase _updateJobSeekerUseCase;
  final ChangePasswordUseCase _updatePasswordUseCase;
  final GetJobSeekerNotificationUsecase _getJobSeekerNotificationUsecase;
  final GetActivitiesUsecase _getActivitiesUsecase;
  final FilePickerService _filePickerService;
  final StateUseCase _stateUseCase;
  final CategoryUseCase _categoryUseCase;
  final CandidateProfileUseCase _candidateProfileUseCase;

  final SkillUseCase _skillUseCase;

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
    emit(
      state.copyWith(
          updateJobSeekerProfileRequest: event.updateJobSeekerprofile),
    );
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
    // List<ActivitiesEntity> activities = [
    //   ActivitiesEntity(status: '0'),
    //   ActivitiesEntity(status: '1'),
    //   ActivitiesEntity(status: '2'),
    //   ActivitiesEntity(status: '3'),
    // ];
    // emit(state.copyWith(
    //   activity: List.from(activities), // Ensure it's a new list
    //   filteredActivity: List.from(activities), // Set default filter
    //   selectedTabIndex: 0, // Default tab index
    // ));

    // emit(state.copyWith(activity: activities, filteredActivity: activities));
  }

  FutureOr<void> _onFilterActivities(
      _FilteredActivities event, Emitter<SettingState> emit) {
    print("Total Activities: ${state.activity.length}");
    print("Total Activities: ${state.filteredActivity.length}");
    List<ActivitiesEntity> filteredList;

    switch (event.selectedTabIndex) {
      case 0:
        filteredList = List.from(state.activity);
        break;
      case 1:
        filteredList =
            state.activity.where((activity) => activity.approved == 0).toList();
        break;
      case 2:
        filteredList =
            state.activity.where((activity) => activity.approved == 1).toList();
        break;
      case 3:
        filteredList =
            state.activity.where((activity) => activity.approved == 2).toList();
        break;

      default:
        if (event.selectedTabIndex == 4) {
          filteredList = state.activity
              .where((activity) => activity.approved! >= 3)
              .toList();
        } else {
          filteredList = List.from(state.activity);
        }
    }

    emit(state.copyWith(
      filteredActivity: List.from(filteredList),
      selectedTabIndex: event.selectedTabIndex,
    ));
  }

  FutureOr<void> _onUpdateState(
      _UpdateState event, Emitter<SettingState> emit) {
    emit(state.copyWith(state: event.value));
  }

  FutureOr<void> _onUpdateSelectedCategory(
      _UpdateSelectedCategory event, Emitter<SettingState> emit) {
    emit(state.copyWith(category: event.value));
  }

  FutureOr<void> _onUpdateSelectedCompensationType(
      _UpdateSelectedCompensationType event, Emitter<SettingState> emit) {
    emit(state.copyWith(compensationType: event.value));
  }

  FutureOr<void> _onUpdateSelectedJobType(
      _UpdateSelectedJobType event, Emitter<SettingState> emit) {
    emit(state.copyWith(jobType: event.value));
  }

  FutureOr<void> _onUpdateSelectedSkill(
      _UpdateSelectedSkill event, Emitter<SettingState> emit) {
    emit(state.copyWith(skills: event.value));
  }

  FutureOr<void> _onGetState(
      _GetState event, Emitter<SettingState> emit) async {
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

  FutureOr<void> _onGetCategory(
      _GetCategory event, Emitter<SettingState> emit) async {
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

  FutureOr<void> _onGetSkill(
      _GetSkills event, Emitter<SettingState> emit) async {
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

  FutureOr<void> _onSelectPicture(
      _SelectPicture event, Emitter<SettingState> emit) async {
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
      _SelectResume event, Emitter<SettingState> emit) async {
    final resumeFile = await _filePickerService.pickFiles(['pdf']);

    if (resumeFile == null) return;
    emit(state.copyWith(resume: File(resumeFile)));
  }

  FutureOr<void> _onUpdateSelectedDate(
      _UpdateSelectedDate event, Emitter<SettingState> emit) {
    emit(state.copyWith(dateOfBirth: event.value));
  }

  FutureOr<void> _onGetCandidateProfile(
      _GetCandidateProfile event, Emitter<SettingState> emit) async {
    emit(state.copyWith(getCandidateProfileState: ViewState.loading));
    final result = await _candidateProfileUseCase(event.jobId);
    result.fold(
      (error) => emit(
        state.copyWith(
          getCandidateProfileState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (candidateProfileEntity) => emit(
        state.copyWith(
          candidateProfileEntity: candidateProfileEntity,
          getCandidateProfileState: ViewState.success,
        ),
      ),
    );
    emit(state.copyWith(getCandidateProfileState: ViewState.idle));
  }
}
