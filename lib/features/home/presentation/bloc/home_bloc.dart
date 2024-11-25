import 'dart:async';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_featured_candidate.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({GetFeaturedCandidateseCase? getFeaturedCandidates})
      : _getFeaturedCandidateseCase = getFeaturedCandidates ?? locator(),
        super(_Initial()) {
    on<_GetFeaturedCandidate>(_onGetFeaturedCandidate);
  }
  final GetFeaturedCandidateseCase _getFeaturedCandidateseCase;
  FutureOr<void> _onGetFeaturedCandidate(event, Emitter<HomeState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _getFeaturedCandidateseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (candidateList) => emit(
        state.copyWith(
          featureCandidateList: candidateList,
          viewState: ViewState.success,
        ),
      ),
    );
    print('cou${state.featureCandidateList}');
  }
}
