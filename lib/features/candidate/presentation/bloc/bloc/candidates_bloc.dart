import 'dart:async';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_without_interview_entity.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/accept_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/add_education_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/add_experience_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_profile_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_skill_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/delete_education_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/delete_experience_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_assigned_candidate.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_education_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_experience_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_without_interview_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/update_education_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/update_experience_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidates_bloc.freezed.dart';
part 'candidates_event.dart';
part 'candidates_state.dart';

class CandidatesBloc extends Bloc<CandidatesEvent, CandidatesState> {
  CandidatesBloc({
    AcceptCandidateUseCase? acceptCandidateUsecase,
    RejectCandidateUseCase? rejectCandidateUseCase,
    GetAssignedCandidateUseCase? getAssignedCandidateUseCase,
    CandidateProfileUseCase? candidateProfileUseCase,
    RejectCandidateWithoutIntervieUseCase?
        rejectCandidateWithoutIntervieUseCase,
    CandidateSkillUseCase? candidateSkillUseCase,
    AddEducationUsecase? addEducationUsecase,
    AddExperienceUsecase? addExperienceUsecase,
    UpdateEducationUsecase? updateEducationUsecase,
    UpdateExperienceUsecase? updateExperienceUsecase,
    GetEducationUsecase? getEducationUsecase,
    GetExperienceUsecase? getExperienceUsecase,
    DeleteEducationUsecase? deleteEducationUsecase,
    DeleteExperienceUsecase? deleteExperienceUsecase,
  })  : _acceptCandidateUsecase = acceptCandidateUsecase ?? locator(),
        _rejectCandidateUsecase = rejectCandidateUseCase ?? locator(),
        _getAssignedCandidateUseCase = getAssignedCandidateUseCase ?? locator(),
        _candidateProfileUseCase = candidateProfileUseCase ?? locator(),
        _candidateSkillUseCase = candidateSkillUseCase ?? locator(),
        _rejectCandidateWithoutIntervieUseCase =
            rejectCandidateWithoutIntervieUseCase ?? locator(),
        _addEducationUsecase = addEducationUsecase ?? locator(),
        _addExperienceUsecase = addExperienceUsecase ?? locator(),
        _deleteEducationUsecase = deleteEducationUsecase ?? locator(),
        _deleteExperienceUsecase = deleteExperienceUsecase ?? locator(),
        _updateEducationUsecase = updateEducationUsecase ?? locator(),
        _updateExperienceUsecase = updateExperienceUsecase ?? locator(),
        _getEducationUsecase = getEducationUsecase ?? locator(),
        _getExperienceUsecase = getExperienceUsecase ?? locator(),
        super(_Initial()) {
    on<_AcceptCandidate>(_onAcceptCandidate);
    on<_RejectCandidate>(_onRejectCandidate);
    on<_GetAssignedCandidate>(_onGetAssignedCandidate);
    on<_GetCandidateProfile>(_onGetCandidateProfile);
    on<_GetCandidateSkill>(_onGetCandidateSkill);
    on<_UpdateSkillRating>(_onUpdateSkillRating);
    on<_RejectCandidateWithoutInterview>(_onRejectCandidateWithoutInterview);
    on<_AddExperience>(_onAddExperience);
    on<_AddEducation>(_onAddEducation);
    on<_GetExperience>(_onGetExperience);
    on<_GetEducation>(_onGetEducation);
    on<_UpdateExperience>(_onUpdateExperience);
    on<_UpdateEducation>(_onUpdateEducation);
    on<_DeleteExperience>(_onDeleteExperience);
    on<_DeleteEducation>(_onDeleteEducation);
    on<_InitializeSkills>(_onInitializeSkills);
  }

  final AcceptCandidateUseCase _acceptCandidateUsecase;
  final RejectCandidateUseCase _rejectCandidateUsecase;
  final GetAssignedCandidateUseCase _getAssignedCandidateUseCase;
  final CandidateSkillUseCase _candidateSkillUseCase;
  final CandidateProfileUseCase _candidateProfileUseCase;
  final RejectCandidateWithoutIntervieUseCase
      _rejectCandidateWithoutIntervieUseCase;
  final AddEducationUsecase _addEducationUsecase;
  final AddExperienceUsecase _addExperienceUsecase;
  final UpdateEducationUsecase _updateEducationUsecase;
  final UpdateExperienceUsecase _updateExperienceUsecase;
  final GetEducationUsecase _getEducationUsecase;
  final GetExperienceUsecase _getExperienceUsecase;
  final DeleteEducationUsecase _deleteEducationUsecase;
  final DeleteExperienceUsecase _deleteExperienceUsecase;

  FutureOr<void> _onAcceptCandidate(
      _AcceptCandidate event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(acceptCandidateState: AcceptCandidateState.loading));
    await _acceptCandidateUsecase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              acceptCandidateState: AcceptCandidateState.failure)),
          (result) => emit(state.copyWith(
                acceptCandidateState: AcceptCandidateState.success,
              )));
    });
    emit(state.copyWith(acceptCandidateState: AcceptCandidateState.idle));
  }

  FutureOr<void> _onRejectCandidate(
      _RejectCandidate event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(rejectCandidateState: RejectCandidateState.loading));
    await _rejectCandidateUsecase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              rejectCandidateState: RejectCandidateState.failure)),
          (result) => emit(state.copyWith(
                rejectCandidateState: RejectCandidateState.success,
              )));
    });
    emit(state.copyWith(rejectCandidateState: RejectCandidateState.idle));
  }

  FutureOr<void> _onGetAssignedCandidate(
      _GetAssignedCandidate event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(
        getAssignedCandidateState: GetAssignedCandidateState.loading));
    final result = await _getAssignedCandidateUseCase(event.jobId);
    result.fold(
      (error) => emit(
        state.copyWith(
          getAssignedCandidateState: GetAssignedCandidateState.failure,
          errorMessage: error.message,
        ),
      ),
      (getAssignedCandidateList) => emit(
        state.copyWith(
          getAssignedCandidateList: getAssignedCandidateList,
          getAssignedCandidateState: GetAssignedCandidateState.success,
        ),
      ),
    );
    emit(state.copyWith(
        getAssignedCandidateState: GetAssignedCandidateState.idle));
  }

  FutureOr<void> _onGetCandidateProfile(
      _GetCandidateProfile event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(
        getCandidateProfileState: GetCandidateProfileState.loading));
    final result = await _candidateProfileUseCase(event.jobId);
    result.fold(
      (error) => emit(
        state.copyWith(
          getCandidateProfileState: GetCandidateProfileState.failure,
          errorMessage: error.message,
        ),
      ),
      (candidateProfileEntity) => emit(
        state.copyWith(
          candidateProfileEntity: candidateProfileEntity,
          getCandidateProfileState: GetCandidateProfileState.success,
        ),
      ),
    );
    emit(state.copyWith(
        getCandidateProfileState: GetCandidateProfileState.idle));
  }

  FutureOr<void> _onGetCandidateSkill(
      _GetCandidateSkill event, Emitter<CandidatesState> emit) async {
    emit(
        state.copyWith(getCandidateSkillState: GetCandidateSkillState.loading));
    final result = await _candidateSkillUseCase(event.identityId);
    result.fold(
      (error) => emit(
        state.copyWith(
          getCandidateSkillState: GetCandidateSkillState.failure,
          errorMessage: error.message,
        ),
      ),
      (candidateSkillList) => emit(
        state.copyWith(
          candidateSkillList: candidateSkillList,
          getCandidateSkillState: GetCandidateSkillState.success,
        ),
      ),
    );
    emit(state.copyWith(getCandidateSkillState: GetCandidateSkillState.idle));
  }

  FutureOr<void> _onInitializeSkills(
      _InitializeSkills event, Emitter<CandidatesState> emit) {
    final initialDropdownValues =
        List<String>.filled(event.candidateSkills.length, '1');

    emit(state.copyWith(
      candidateSkillList: event.candidateSkills,
      dropdownValues: initialDropdownValues,
    ));
  }

  FutureOr<void> _onUpdateSkillRating(
      _UpdateSkillRating event, Emitter<CandidatesState> emit) {
    final updatedDropdownValues = List<String>.from(state.dropdownValues);
    updatedDropdownValues[event.skillIndex] = event.value;

    emit(state.copyWith(
      dropdownValues: updatedDropdownValues,
      skillRating: event.value,
      skillIndex: event.skillIndex,
    ));
  }

  FutureOr<void> _onRejectCandidateWithoutInterview(
      _RejectCandidateWithoutInterview event,
      Emitter<CandidatesState> emit) async {
    emit(state.copyWith(
        rejectCandidateWithoutInterviewState:
            RejectCandidateWithoutInterviewState.loading));
    await _rejectCandidateWithoutIntervieUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              rejectCandidateWithoutInterviewState:
                  RejectCandidateWithoutInterviewState.failure)),
          (result) => emit(state.copyWith(
                rejectCandidateWithoutInterviewState:
                    RejectCandidateWithoutInterviewState.success,
              )));
    });
    emit(state.copyWith(
        rejectCandidateWithoutInterviewState:
            RejectCandidateWithoutInterviewState.idle));
  }

  FutureOr<void> _onAddExperience(
      _AddExperience event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(addExperienceState: ViewState.loading));
    final result = await _addExperienceUsecase(event.param);
    result.fold(
        (error) => emit(state.copyWith(addExperienceState: ViewState.failure)),
        (result) => emit(state.copyWith(
              addExperienceState: ViewState.success,
            )));

    emit(state.copyWith(addExperienceState: ViewState.idle));
  }

  FutureOr<void> _onAddEducation(
      _AddEducation event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(addEducationState: ViewState.loading));
    final result = await _addEducationUsecase(event.param);
    result.fold(
        (error) => emit(state.copyWith(addEducationState: ViewState.failure)),
        (result) => emit(state.copyWith(
              addEducationState: ViewState.success,
            )));

    emit(state.copyWith(addEducationState: ViewState.idle));
  }

  FutureOr<void> _onUpdateExperience(
      _UpdateExperience event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(updateExperienceState: ViewState.loading));
    final result = await _getExperienceUsecase(NoParams());
    result.fold(
        (error) =>
            emit(state.copyWith(updateExperienceState: ViewState.failure)),
        (result) => emit(state.copyWith(
              updateExperienceState: ViewState.success,
            )));

    emit(state.copyWith(updateExperienceState: ViewState.idle));
  }

  FutureOr<void> _onUpdateEducation(
      _UpdateEducation event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(updateEducationState: ViewState.loading));
    final result = await _updateEducationUsecase(event.param);
    result.fold(
        (error) =>
            emit(state.copyWith(updateEducationState: ViewState.failure)),
        (result) => emit(state.copyWith(
              updateEducationState: ViewState.success,
            )));

    emit(state.copyWith(updateEducationState: ViewState.idle));
  }

  FutureOr<void> _onDeleteExperience(
      _DeleteExperience event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(deleteExperienceState: ViewState.loading));
    final result = await _deleteExperienceUsecase(event.identity);
    result.fold(
        (error) =>
            emit(state.copyWith(deleteExperienceState: ViewState.failure)),
        (result) => emit(state.copyWith(
              deleteExperienceState: ViewState.success,
            )));

    emit(state.copyWith(deleteExperienceState: ViewState.idle));
  }

  FutureOr<void> _onDeleteEducation(
      _DeleteEducation event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(deleteEducationeState: ViewState.loading));
    final result = await _deleteEducationUsecase(event.identity);
    result.fold(
        (error) =>
            emit(state.copyWith(deleteEducationeState: ViewState.failure)),
        (result) => emit(state.copyWith(
              deleteEducationeState: ViewState.success,
            )));

    emit(state.copyWith(deleteEducationeState: ViewState.idle));
  }

  FutureOr<void> _onGetExperience(
      _GetExperience event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(getExperienceState: ViewState.loading));
    final result = await _getExperienceUsecase(NoParams());
    result.fold(
        (error) => emit(state.copyWith(getExperienceState: ViewState.failure)),
        (experience) => emit(state.copyWith(
              getExperienceEntity: experience,
              getExperienceState: ViewState.success,
            )));

    emit(state.copyWith(getExperienceState: ViewState.idle));
  }

  FutureOr<void> _onGetEducation(
      _GetEducation event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(getEducationeState: ViewState.loading));
    final result = await _getEducationUsecase(NoParams());
    result.fold(
        (error) => emit(state.copyWith(getEducationeState: ViewState.failure)),
        (education) => emit(state.copyWith(
              getEducationEntity: education,
              getEducationeState: ViewState.success,
            )));

    emit(state.copyWith(getEducationeState: ViewState.idle));
  }
}
