import 'dart:async';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/home/domain/entities/all_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/job_seeker_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/domain/usecases/apply_for_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_all_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_employer_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_featured_candidate.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_featured_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_job_seeker_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/post_job_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    GetFeaturedCandidateUseCase? getFeaturedCandidates,
    GetJobSeekerJobsUseCase? getJobSeekerJobsUseCase,
    GetEmployerJobUseCase? getEmployerJobUseCase,
    GetFeatureJobUseCase? getFeatureJobUseCase,
    PostJobUseCase? postJobUseCase,
    ApplyForJobUseCase? applyForJobUseCase,
    GetAllJobUseCase? getAllJobUseCase,
  })  : _getFeaturedCandidateseCase = getFeaturedCandidates ?? locator(),
        _getEmployerJobUseCase = getEmployerJobUseCase ?? locator(),
        _jobSeekerJobsUseCase = getJobSeekerJobsUseCase ?? locator(),
        _getAllJobUseCase = getAllJobUseCase ?? locator(),
        _getFeatureJobUseCase = getFeatureJobUseCase ?? locator(),
        _postJobUseCase = postJobUseCase ?? locator(),
        _applyForJobUseCase = applyForJobUseCase ?? locator(),
        super(_Initial()) {
    on<_GetFeaturedCandidate>(_onGetFeaturedCandidate);
    on<_GetFeaturedJob>(_onGetFeaturedJob);
    on<_GetEmployerJob>(_onGetEmployerJob);
    on<_GetAllJobs>(_onGetAllJobs);
    on<_GetJobSeekerJobs>(_onGetJobSeekerJobs);
    on<_PostJob>(_onPostJob);
    on<_ApplyForJob>(_onApplyForJob);
  }
  final GetFeaturedCandidateUseCase _getFeaturedCandidateseCase;
  final GetEmployerJobUseCase _getEmployerJobUseCase;
  final GetJobSeekerJobsUseCase _jobSeekerJobsUseCase;
  final GetAllJobUseCase _getAllJobUseCase;
  final GetFeatureJobUseCase _getFeatureJobUseCase;
  final PostJobUseCase _postJobUseCase;
  final ApplyForJobUseCase _applyForJobUseCase;

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

  FutureOr<void> _onGetJobSeekerJobs(
      _GetJobSeekerJobs event, Emitter<HomeState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _jobSeekerJobsUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (jobSeekerJob) => emit(
        state.copyWith(
          jobSeekerJobList: jobSeekerJob,
          viewState: ViewState.success,
        ),
      ),
    );
    print('cou${state.featureCandidateList}');
  }

  FutureOr<void> _onGetFeaturedJob(
      _GetFeaturedJob event, Emitter<HomeState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _getFeatureJobUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (featuredJob) => emit(
        state.copyWith(
          featuredJobList: featuredJob,
          viewState: ViewState.success,
        ),
      ),
    );
    print('cou${state.featureCandidateList}');
  }

  FutureOr<void> _onGetEmployerJob(
      _GetEmployerJob event, Emitter<HomeState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _getEmployerJobUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (employerJob) => emit(
        state.copyWith(
          employerJobList: employerJob,
          viewState: ViewState.success,
        ),
      ),
    );
    print('cou${state.featureCandidateList}');
  }

  FutureOr<void> _onGetAllJobs(
      _GetAllJobs event, Emitter<HomeState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _getAllJobUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (allJob) => emit(
        state.copyWith(
          allJobList: allJob,
          viewState: ViewState.success,
        ),
      ),
    );
    print('cou${state.featureCandidateList}');
  }

  FutureOr<void> _onPostJob(_PostJob event, Emitter<HomeState> emit) async {
    await _postJobUseCase(event.param).then((value) {
      value.fold((error) => emit(state.copyWith(viewState: ViewState.failure)),
          (result) => emit(state.copyWith(viewState: ViewState.success)));
    });
  }

  FutureOr<void> _onApplyForJob(
      _ApplyForJob event, Emitter<HomeState> emit) async {
    await _applyForJobUseCase(event.id).then((value) {
      value.fold((error) => emit(state.copyWith(viewState: ViewState.failure)),
          (result) => emit(state.copyWith(viewState: ViewState.success)));
    });
  }
}
