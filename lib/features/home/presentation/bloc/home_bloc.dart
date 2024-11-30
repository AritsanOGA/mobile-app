import 'dart:async';

import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/country_useecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/get_category_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/skill_usecase.dart';
import 'package:artisan_oga/features/authentication/domain/usecases/state_usecase.dart';
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
    CountryUseCase? countryUseCase,
    CategoryUseCase? categoryUseCase,
    SkillUseCase? skillUseCase,
    StateUseCase? stateUseCase,
  })  : _getFeaturedCandidateseCase = getFeaturedCandidates ?? locator(),
        _getEmployerJobUseCase = getEmployerJobUseCase ?? locator(),
        _jobSeekerJobsUseCase = getJobSeekerJobsUseCase ?? locator(),
        _getAllJobUseCase = getAllJobUseCase ?? locator(),
        _getFeatureJobUseCase = getFeatureJobUseCase ?? locator(),
        _postJobUseCase = postJobUseCase ?? locator(),
        _applyForJobUseCase = applyForJobUseCase ?? locator(),
        _countryUseCase = countryUseCase ?? locator(),
        _stateUseCase = stateUseCase ?? locator(),
        _categoryUseCase = categoryUseCase ?? locator(),
        _skillUseCase = skillUseCase ?? locator(),
        super(_Initial()) {
    on<_GetFeaturedCandidate>(_onGetFeaturedCandidate);
    on<_GetFeaturedJob>(_onGetFeaturedJob);
    on<_GetEmployerJob>(_onGetEmployerJob);
    on<_GetAllJobs>(_onGetAllJobs);
    on<_GetJobSeekerJobs>(_onGetJobSeekerJobs);
    on<_PostJob>(_onPostJob);
    on<_UpdateSelectedCategory>(_onUpdateSelectedCategory);
    on<_UpdateSelectedSkill>(_onUpdateSelectedSkill);
    on<_UpdateSelectedJobType>(_onUpdateSelectedJobType);
    on<_UpdateSelectedGender>(_onUpdateSelectedGender);
      on<_UpdateSelectedPackage>(_onUpdateSelectedPackage);
    on<_UpdateCountry>(_onUpdateCountry);
    on<_UpdateState>(_onUpdateState);
    on<_UpdateSelectedWorkMode>(_onUpdateSelectedWorkMode);
    on<_UpdateSelectedCompensationType>(_onUpdateSelectedCompensationType);
    on<_UpdateSelectedSkillLevel>(_onUpdateSelectedSkillLevel);
    on<_UpdateSelectedEducationLevel>(_onUpdateSelectedEducationLevel);
    on<_ApplyForJob>(_onApplyForJob);
    on<_UpdatePostJobRequest>(_onUpdatePostJobRequest);
    on<_GetCountries>(_onGetCountries);
    on<_GetState>(_onGetState);
    on<_GetCategory>(_onGetCategory);
    on<_GetSkills>(_onGetSkill);
  }
  final GetFeaturedCandidateUseCase _getFeaturedCandidateseCase;
  final GetEmployerJobUseCase _getEmployerJobUseCase;
  final GetJobSeekerJobsUseCase _jobSeekerJobsUseCase;
  final GetAllJobUseCase _getAllJobUseCase;
  final GetFeatureJobUseCase _getFeatureJobUseCase;
  final PostJobUseCase _postJobUseCase;
  final ApplyForJobUseCase _applyForJobUseCase;
  final CountryUseCase _countryUseCase;
  final CategoryUseCase _categoryUseCase;
  final SkillUseCase _skillUseCase;
  final StateUseCase _stateUseCase;

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

  FutureOr<void> _onUpdatePostJobRequest(
      _UpdatePostJobRequest event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        postJobRequest: event.postJobRequest,
      ),
    );
  }

  FutureOr<void> _onUpdateSelectedJobType(
      _UpdateSelectedJobType event, Emitter<HomeState> emit) {
    emit(state.copyWith(jobType: event.value));
  }

  FutureOr<void> _onUpdateSelectedEducationLevel(
      _UpdateSelectedEducationLevel event, Emitter<HomeState> emit) {
    emit(state.copyWith(educationLevel: event.value));
  }

  FutureOr<void> _onUpdateSelectedSkillLevel(
      _UpdateSelectedSkillLevel event, Emitter<HomeState> emit) {
    emit(state.copyWith(skillLevel: event.value));
  }

  FutureOr<void> _onUpdateSelectedWorkMode(
      _UpdateSelectedWorkMode event, Emitter<HomeState> emit) {
    emit(state.copyWith(workMode: event.value));
  }

  FutureOr<void> _onUpdateSelectedSkill(
      _UpdateSelectedSkill event, Emitter<HomeState> emit) {
    emit(state.copyWith(skills: event.value));
  }

  FutureOr<void> _onUpdateSelectedCategory(
      _UpdateSelectedCategory event, Emitter<HomeState> emit) {
    emit(state.copyWith(category: event.value));
  }

  FutureOr<void> _onGetCategory(event, Emitter<HomeState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _categoryUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (category) => emit(
        state.copyWith(
          categoryList: category,
          viewState: ViewState.success,
        ),
      ),
    );
    print('state ${state.states}');
  }

  FutureOr<void> _onGetSkill(event, Emitter<HomeState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _skillUseCase(event.id);
    result.fold(
      (error) => emit(
        state.copyWith(
          viewState: ViewState.failure,
          errorMessage: error.message,
        ),
      ),
      (skills) => emit(
        state.copyWith(
          skill: skills,
          viewState: ViewState.success,
        ),
      ),
    );
    print('skill ${state.states}');
  }

  FutureOr<void> _onGetState(_GetState event, Emitter<HomeState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await _stateUseCase(event.id);
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
    print('state ${state.states}');
  }

  FutureOr<void> _onGetCountries(
      _GetCountries event, Emitter<HomeState> emit) async {
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
    print('cou${state.countries}');
  }

  FutureOr<void> _onUpdateState(_UpdateState event, Emitter<HomeState> emit) {
    emit(state.copyWith(state: event.value));
  }

  FutureOr<void> _onUpdateCountry(
      _UpdateCountry event, Emitter<HomeState> emit) {
    emit(state.copyWith(country: event.value));
  }

  FutureOr<void> _onUpdateSelectedGender(
      _UpdateSelectedGender event, Emitter<HomeState> emit) {
    emit(state.copyWith(gender: event.value));
  }

  FutureOr<void> _onUpdateSelectedCompensationType(
      _UpdateSelectedCompensationType event, Emitter<HomeState> emit) {
    emit(state.copyWith(compensationType: event.value));
  }

  FutureOr<void> _onUpdateSelectedPackage(_UpdateSelectedPackage event, Emitter<HomeState> emit) {
        emit(state.copyWith(package: event.value));
  }
}
