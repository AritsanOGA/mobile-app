import 'dart:async';
import 'dart:math';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/accept_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_profile_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_skill_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_assigned_candidate.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_usecase.dart';
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
      CandidateSkillUseCase? candidateSkillUseCase})
      : _acceptCandidateUsecase = acceptCandidateUsecase ?? locator(),
        _rejectCandidateUsecase = rejectCandidateUseCase ?? locator(),
        _getAssignedCandidateUseCase = getAssignedCandidateUseCase ?? locator(),
        _candidateProfileUseCase = candidateProfileUseCase ?? locator(),
        _candidateSkillUseCase = candidateSkillUseCase ?? locator(),
        super(_Initial()) {
    on<_AcceptCandidate>(_onAcceptCandidate);
    on<_RejectCandidate>(_onRejectCandidate);
    on<_GetAssignedCandidate>(_onGetAssignedCandidate);
    on<_GetCandidateProfile>(_onGetCandidateProfile);
    on<_GetCandidateSkill>(_onGetCandidateSkill);
    on<_UpdateSkillRating>(_onUpdateSkillRating);
    on<_InitializeSkills>(_onInitializeSkills);
  }

  final AcceptCandidateUseCase _acceptCandidateUsecase;
  final RejectCandidateUseCase _rejectCandidateUsecase;
  final GetAssignedCandidateUseCase _getAssignedCandidateUseCase;
  final CandidateSkillUseCase _candidateSkillUseCase;
  final CandidateProfileUseCase _candidateProfileUseCase;

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

  //    final initialRatings = List<int>.filled(event..length, 0); // Default rating is 0
  // emit(SkillsRatingState(skills: event.skills, ratings: initialRatings));
  //    final updatedRatings = List<int>.from(state.ratings);
  // updatedRatings[event.skillIndex] = event.rating;
  // emit(state.copyWith(ratings: updatedRatings));
  //       final updatedSkills = List<CandidateSkillEntity>.from(state.dropdownList);
  //   updatedSkills[event.skillIndex] =
  //       updatedSkills[event.skillIndex].copyWith(: event.newRating);
  // dropdownValues:
  // List<int>.filled(state.dropdownList.length, 1);
  // final updatedValues = List<String>.from(state.dropdownValues);
  // updatedValues[event.skillIndex] = event.value;
  // //  emit(SkillState(skills: updatedSkills));
  // // final updatedValues = Map<int, int>.from(state.dropdownValue)
  // //   ..[event.index] = event.value;
  // emit(state.copyWith(dropdownList: updatedValues));
  // emit(state.copyWith(dropdownValue: event.value, skillIndex: event.skillIndex));
}
