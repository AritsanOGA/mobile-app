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
import 'package:artisan_oga/features/home/domain/entities/edit_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/job_seeker_job_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/domain/usecases/apply_for_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/edit_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_all_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_employer_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_featured_candidate.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_featured_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/get_job_seeker_job_usecase.dart';
import 'package:artisan_oga/features/home/domain/usecases/post_job_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
      {GetFeaturedCandidateUseCase? getFeaturedCandidates,
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
      EditJobUseCase? editJobUseCase})
      : _getFeaturedCandidateseCase = getFeaturedCandidates ?? locator(),
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
        _editJobUseCase = editJobUseCase ?? locator(),
        super(_Initial()) {
    on<_GetFeaturedCandidate>(_onGetFeaturedCandidate);
    on<_GetFeaturedJob>(_onGetFeaturedJob);
    on<_GetEmployerJob>(_onGetEmployerJob);
    on<_GetAllJobs>(_onGetAllJobs);
    on<_GetJobSeekerJobs>(_onGetJobSeekerJobs);
    on<_PostJob>(_onPostJob);
    on<_EditJob>(_onEditJob);
    on<_UpdateSelectedCategory>(_onUpdateSelectedCategory);
    on<_UpdateSelectedSkill>(_onUpdateSelectedSkill);
    on<_UpdateSelectedJobType>(_onUpdateSelectedJobType);
    on<_UpdateSelectedGender>(_onUpdateSelectedGender);
    on<_UpdateSelectedPackage>(_onUpdateSelectedPackage);
    on<_UpdateCountry>(_onUpdateCountry);
    on<_UpdateState>(_onUpdateState);
    on<_UpdateSelectedDate>(_onUpdateSelectedDate);
    on<_UpdateSelectedWorkMode>(_onUpdateSelectedWorkMode);
    on<_UpdateSelectedAvailability>(_onUpdateSelectedAvailability);
    on<_UpdateSelectedCompensationType>(_onUpdateSelectedCompensationType);
    on<_UpdateSelectedSkillLevel>(_onUpdateSelectedSkillLevel);
    on<_UpdateSelectedEducationLevel>(_onUpdateSelectedEducationLevel);
    on<_ApplyForJob>(_onApplyForJob);
    on<_UpdatePostJobRequest>(_onUpdatePostJobRequest);
    on<_UpdateEditJobRequest>(_onUpdateEditJobRequest);
    on<_GetCountries>(_onGetCountries);
    on<_GetState>(_onGetState);
    on<_GetCategory>(_onGetCategory);
    on<_GetSkills>(_onGetSkill);
    on<_SelectedDrawer>(_onSelectedDrawer);
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
  final EditJobUseCase _editJobUseCase;
  final StateUseCase _stateUseCase;

  FutureOr<void> _onGetFeaturedCandidate(event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
        getFeaturedCandidateState: GetFeaturedCandidateState.loading));
    final result = await _getFeaturedCandidateseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getFeaturedCandidateState: GetFeaturedCandidateState.failure,
          errorMessage: error.message,
        ),
      ),
      (candidateList) => emit(
        state.copyWith(
          featureCandidateList: candidateList,
          getFeaturedCandidateState: GetFeaturedCandidateState.success,
        ),
      ),
    );
    emit(state.copyWith(
        getFeaturedCandidateState: GetFeaturedCandidateState.idle));
  }

  FutureOr<void> _onGetJobSeekerJobs(
      _GetJobSeekerJobs event, Emitter<HomeState> emit) async {
    emit(state.copyWith(getJobSeekerJobState: GetJobSeekerJobState.loading));
    final result = await _jobSeekerJobsUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getJobSeekerJobState: GetJobSeekerJobState.failure,
          errorMessage: error.message,
        ),
      ),
      (jobSeekerJob) => emit(
        state.copyWith(
          jobSeekerJobList: jobSeekerJob,
          getJobSeekerJobState: GetJobSeekerJobState.success,
        ),
      ),
    );
    emit(state.copyWith(getJobSeekerJobState: GetJobSeekerJobState.idle));
  }

  FutureOr<void> _onGetFeaturedJob(
      _GetFeaturedJob event, Emitter<HomeState> emit) async {
    emit(state.copyWith(getFeaturedJobState: GetFeaturedJobState.loading));
    final result = await _getFeatureJobUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getFeaturedJobState: GetFeaturedJobState.failure,
          errorMessage: error.message,
        ),
      ),
      (featuredJob) => emit(
        state.copyWith(
          featuredJobList: featuredJob,
          getFeaturedJobState: GetFeaturedJobState.success,
        ),
      ),
    );
    emit(state.copyWith(getFeaturedJobState: GetFeaturedJobState.idle));
  }

  FutureOr<void> _onGetEmployerJob(
      _GetEmployerJob event, Emitter<HomeState> emit) async {
    emit(state.copyWith(getEmployerJobState: GetEmployerJobState.loading));
    final result = await _getEmployerJobUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getEmployerJobState: GetEmployerJobState.failure,
          errorMessage: error.message,
        ),
      ),
      (employerJob) => emit(
        state.copyWith(
          employerJobList: employerJob,
          getEmployerJobState: GetEmployerJobState.success,
        ),
      ),
    );
    emit(state.copyWith(getEmployerJobState: GetEmployerJobState.idle));
  }

  FutureOr<void> _onGetAllJobs(
      _GetAllJobs event, Emitter<HomeState> emit) async {
    emit(state.copyWith(getAllJobState: GetAllJobState.loading));
    final result = await _getAllJobUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getAllJobState: GetAllJobState.failure,
          errorMessage: error.message,
        ),
      ),
      (allJob) => emit(
        state.copyWith(
          allJobList: allJob,
          getAllJobState: GetAllJobState.success,
        ),
      ),
    );
    emit(state.copyWith(getAllJobState: GetAllJobState.idle));
  }

  FutureOr<void> _onPostJob(_PostJob event, Emitter<HomeState> emit) async {
    emit(state.copyWith(postJobState: PostJobState.loading));
    await _postJobUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(postJobState: PostJobState.failure)),
          (result) => emit(state.copyWith(
                postJobState: PostJobState.success,
              )));
    });
    emit(state.copyWith(postJobState: PostJobState.idle));
  }

  FutureOr<void> _onEditJob(_EditJob event, Emitter<HomeState> emit) async {
    emit(state.copyWith(editJobState: ViewState.loading));
    await _editJobUseCase(event.param).then((value) {
      value.fold(
          (error) => emit(state.copyWith(editJobState: ViewState.failure)),
          (result) => emit(state.copyWith(
                editJobState: ViewState.success,
              )));
    });
    emit(state.copyWith(editJobState: ViewState.idle));
  }

  FutureOr<void> _onApplyForJob(
      _ApplyForJob event, Emitter<HomeState> emit) async {
    emit(state.copyWith(applyForJobState: ApplyForJobState.loading));
    await _applyForJobUseCase(event.id).then((value) {
      value.fold(
          (error) =>
              emit(state.copyWith(applyForJobState: ApplyForJobState.failure)),
          (result) => emit(state.copyWith(
                applyForJobState: ApplyForJobState.success,
              )));
    });
    emit(state.copyWith(applyForJobState: ApplyForJobState.idle));
  }

  FutureOr<void> _onUpdateEditJobRequest(
      _UpdateEditJobRequest event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        editJobRequest: event.editJobRequest,
      ),
    );
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

  FutureOr<void> _onGetSkill(event, Emitter<HomeState> emit) async {
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

  FutureOr<void> _onGetState(_GetState event, Emitter<HomeState> emit) async {
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

  FutureOr<void> _onGetCountries(
      _GetCountries event, Emitter<HomeState> emit) async {
    emit(state.copyWith(getCountryState: GetCountryState.loading));
    final result = await _countryUseCase(NoParams());
    result.fold(
      (error) => emit(
        state.copyWith(
          getCountryState: GetCountryState.failure,
          errorMessage: error.message,
        ),
      ),
      (countries) => emit(
        state.copyWith(
          countries: countries,
          getCountryState: GetCountryState.success,
        ),
      ),
    );
    emit(state.copyWith(getCountryState: GetCountryState.idle));
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

  FutureOr<void> _onUpdateSelectedPackage(
      _UpdateSelectedPackage event, Emitter<HomeState> emit) {
    emit(state.copyWith(package: event.value));
  }

  FutureOr<void> _onUpdateSelectedAvailability(
      _UpdateSelectedAvailability event, Emitter<HomeState> emit) {
    emit(state.copyWith(availablity: event.value));
  }

  FutureOr<void> _onUpdateSelectedDate(
      _UpdateSelectedDate event, Emitter<HomeState> emit) {
    emit(state.copyWith(applicationTime: event.value));
  }

  FutureOr<void> _onSelectedDrawer(
      _SelectedDrawer event, Emitter<HomeState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }
}
