import 'dart:async';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/accept_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_assigned_candidate.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_usecase.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'candidates_bloc.freezed.dart';
part 'candidates_event.dart';
part 'candidates_state.dart';

class CandidatesBloc extends Bloc<CandidatesEvent, CandidatesState> {
  CandidatesBloc(
      {AcceptCandidateUseCase? acceptCandidateUsecase,
      RejectCandidateUseCase? rejectCandidateUseCase,
      GetAssignedCandidateUseCase? getAssignedCandidateUseCase})
      : _acceptCandidateUsecase = acceptCandidateUsecase ?? locator(),
        _rejectCandidateUsecase = rejectCandidateUseCase ?? locator(),
        _getAssignedCandidateUseCase = getAssignedCandidateUseCase ?? locator(),
        super(_Initial()) {
    on<_AcceptCandidate>(_onAcceptCandidate);
    on<_RejectCandidate>(_onRejectCandidate);
    on<_GetAssignedCandidate>(_onGetAssignedCandidate);
  }

  final AcceptCandidateUseCase _acceptCandidateUsecase;
  final RejectCandidateUseCase _rejectCandidateUsecase;
  final GetAssignedCandidateUseCase _getAssignedCandidateUseCase;

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
}
