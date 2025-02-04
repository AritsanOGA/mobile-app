import 'dart:async';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_without_interview_entity.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/accept_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_profile_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_skill_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_assigned_candidate.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_without_interview_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidates_bloc.freezed.dart';
part 'candidates_event.dart';
part 'candidates_state.dart';

class CandidatesBloc extends Bloc<CandidatesEvent, CandidatesState> {
  CandidatesBloc(
      {AcceptCandidateUseCase? acceptCandidateUsecase,
      RejectCandidateUseCase? rejectCandidateUseCase,
      GetAssignedCandidateUseCase? getAssignedCandidateUseCase,
      CandidateProfileUseCase? candidateProfileUseCase,
       RejectCandidateWithoutIntervieUseCase? rejectCandidateWithoutIntervieUseCase,
      CandidateSkillUseCase? candidateSkillUseCase})
      : _acceptCandidateUsecase = acceptCandidateUsecase ?? locator(),
        _rejectCandidateUsecase = rejectCandidateUseCase ?? locator(),
        _getAssignedCandidateUseCase = getAssignedCandidateUseCase ?? locator(),
        _candidateProfileUseCase = candidateProfileUseCase ?? locator(),
        _candidateSkillUseCase = candidateSkillUseCase ?? locator(),
        _rejectCandidateWithoutIntervieUseCase = rejectCandidateWithoutIntervieUseCase ?? locator(),

        super(_Initial()) {
    on<_AcceptCandidate>(_onAcceptCandidate);
    on<_RejectCandidate>(_onRejectCandidate);
        on<_RejectCandidate>(_onRejectCandidate);

    on<_GetAssignedCandidate>(_onGetAssignedCandidate);
    on<_GetCandidateProfile>(_onGetCandidateProfile);
    on<_GetCandidateSkill>(_onGetCandidateSkill);
    on<_UpdateSkillRating>(_onUpdateSkillRating);
    on<_RejectCandidateWithoutInterview>(_onRejectCandidateWithoutInterview);
  }

  final AcceptCandidateUseCase _acceptCandidateUsecase;
  final RejectCandidateUseCase _rejectCandidateUsecase;
  final GetAssignedCandidateUseCase _getAssignedCandidateUseCase;
  final CandidateSkillUseCase _candidateSkillUseCase;
  final CandidateProfileUseCase _candidateProfileUseCase;
  final RejectCandidateWithoutIntervieUseCase _rejectCandidateWithoutIntervieUseCase;

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
    final initialDropdownValues = List<String>.filled(
        event.candidateSkills.length, '1'); // Default ratings

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



  FutureOr<void> _onRejectCandidateWithoutInterview(_RejectCandidateWithoutInterview event, Emitter<CandidatesState> emit)
  async {

     emit(state.copyWith(rejectCandidateWithoutInterviewState: RejectCandidateWithoutInterviewState.loading));
    await _rejectCandidateWithoutIntervieUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(
              rejectCandidateWithoutInterviewState: RejectCandidateWithoutInterviewState.failure)),
          (result) => emit(state.copyWith(
                rejectCandidateWithoutInterviewState: RejectCandidateWithoutInterviewState.success,
              )));
    });
    emit(state.copyWith(rejectCandidateWithoutInterviewState: RejectCandidateWithoutInterviewState.idle));
  }


}
