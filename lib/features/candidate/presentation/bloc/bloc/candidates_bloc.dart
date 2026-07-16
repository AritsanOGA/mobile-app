import 'dart:async';
import 'dart:io';

import 'package:artisan_oga/core/services/file_picker_service.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/di.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_work_photo_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_without_interview_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/update_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/update_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/upload_card_entity.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/accept_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/add_awards_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/add_education_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/add_experience_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_profile_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/check_if_applied_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/candidate_skill_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/delete_awards_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/delete_education_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/delete_experience_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/delete_work_photo_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_assigned_candidate.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_awards_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_education_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_experience_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/get_work_photo_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/reject_candidate_without_interview_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/update_award_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/update_education_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/update_experience_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/upload_work_id_usecase.dart';
import 'package:artisan_oga/features/candidate/domain/usecases/upload_work_photo_usecase.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
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
      RejectCandidateWithoutIntervieUseCase?
          rejectCandidateWithoutIntervieUseCase,
      FilePickerService? filePickerService,
      CandidateSkillUseCase? candidateSkillUseCase,
      AddEducationUsecase? addEducationUsecase,
      AddExperienceUsecase? addExperienceUsecase,
      UpdateEducationUsecase? updateEducationUsecase,
      UpdateExperienceUsecase? updateExperienceUsecase,
      GetEducationUsecase? getEducationUsecase,
      AddAwardUsecase? addAwardUsecase,
      GetAwardsUsecase? getAwardsUsecase,
      DeleteAwardUsecase? deleteAwardUsecase,
      UpdateAwardUsecase? updateAwardUsecase,
      GetExperienceUsecase? getExperienceUsecase,
      DeleteEducationUsecase? deleteEducationUsecase,
      DeleteExperienceUsecase? deleteExperienceUsecase,
      UploadWorkPhotoUsecase? uploadWorkPhotoUsecase,
      DeleteWorkPhotoUsecase? deleteWorkPhotoUsecase,
      UploadWorkIDUsecase? uploadWorkIDUsecase,
      GetWorkPhotoUsecase? getWorkPhotoUsecase,
      CheckIfAppliedUseCase? checkIfAppliedUseCase})
      : _acceptCandidateUsecase = acceptCandidateUsecase ?? locator(),
        _checkIfAppliedUseCase = checkIfAppliedUseCase ?? locator(),
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
        _deleteWorkPhotoUsecase = deleteWorkPhotoUsecase ?? locator(),
        _uploadWorkPhotoUsecase = uploadWorkPhotoUsecase ?? locator(),
        _getWorkPhotoUsecase = getWorkPhotoUsecase ?? locator(),
        _uploadWorkIDUsecase = uploadWorkIDUsecase ?? locator(),
        _filePickerService = filePickerService ?? locator(),
        _getAwardsUsecase = getAwardsUsecase ?? locator(),
        _deleteAwardUsecase = deleteAwardUsecase ?? locator(),
        _addAwardUsecase = addAwardUsecase ?? locator(),
        _updateAwardUsecase = updateAwardUsecase ?? locator(),
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
    on<_AddAward>(_onAddAward);
    on<_GetAward>(_onGetAward);
    on<_DeleteAward>(_onDeleteAward);
    on<_UpdateAward>(_onUpdateAward);
    on<_GetExperience>(_onGetExperience);
    on<_GetEducation>(_onGetEducation);
    on<_UpdateExperience>(_onUpdateExperience);
    on<_UpdateEducation>(_onUpdateEducation);
    on<_GetWorkPhotos>(_onGetWorkPhotos);
    on<_UploadWorkPhoto>(_onUploadWorkPhoto);
    on<_UploadWorkId>(_onUploadWorkId);
    on<_DeleteWorkPhoto>(_onDeleteWorkPhoto);
    on<_SelectWorkPhotos>(_onSelectWorkPhotos);
    on<_SelectWorkId>(_onSelectWorkId);
    on<_SelectAward>(_onSelectAward);
    on<_DeleteExperience>(_onDeleteExperience);
    on<_DeleteEducation>(_onDeleteEducation);
    on<_UpdateEducationQualification>(_onUpdateEducationQualification);
    on<_InitializeSkills>(_onInitializeSkills);
    on<_CheckIfApplied>(_onCheckIfApplied);
  }

  final AcceptCandidateUseCase _acceptCandidateUsecase;
  final CheckIfAppliedUseCase _checkIfAppliedUseCase;
  final RejectCandidateUseCase _rejectCandidateUsecase;
  final GetAssignedCandidateUseCase _getAssignedCandidateUseCase;
  final CandidateSkillUseCase _candidateSkillUseCase;
  final CandidateProfileUseCase _candidateProfileUseCase;
  final RejectCandidateWithoutIntervieUseCase
      _rejectCandidateWithoutIntervieUseCase;
  final FilePickerService _filePickerService;
  final AddEducationUsecase _addEducationUsecase;
  final AddExperienceUsecase _addExperienceUsecase;
  final UpdateEducationUsecase _updateEducationUsecase;
  final UpdateExperienceUsecase _updateExperienceUsecase;
  final GetEducationUsecase _getEducationUsecase;
  final GetExperienceUsecase _getExperienceUsecase;
  final DeleteEducationUsecase _deleteEducationUsecase;
  final DeleteExperienceUsecase _deleteExperienceUsecase;
  final UploadWorkPhotoUsecase _uploadWorkPhotoUsecase;
  final DeleteWorkPhotoUsecase _deleteWorkPhotoUsecase;
  final GetWorkPhotoUsecase _getWorkPhotoUsecase;
  final UploadWorkIDUsecase _uploadWorkIDUsecase;
  final AddAwardUsecase _addAwardUsecase;
  final GetAwardsUsecase _getAwardsUsecase;
  final DeleteAwardUsecase _deleteAwardUsecase;
  final UpdateAwardUsecase _updateAwardUsecase;

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

  FutureOr<void> _onGetWorkPhotos(
      _GetWorkPhotos event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(getWorkPhotoState: ViewState.loading));
    final result = await _getWorkPhotoUsecase(NoParams());
    result.fold(
        (error) => emit(state.copyWith(getWorkPhotoState: ViewState.failure)),
        (result) => emit(state.copyWith(
            getWorkPhotoState: ViewState.success, getWorkPhotoEntity: result)));

    emit(state.copyWith(getWorkPhotoState: ViewState.idle));
  }

  FutureOr<void> _onDeleteWorkPhoto(
      _DeleteWorkPhoto event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(deleteWorkPhotoState: ViewState.loading));
    final result = await _deleteWorkPhotoUsecase(event.identity);
    result.fold(
        (error) =>
            emit(state.copyWith(deleteWorkPhotoState: ViewState.failure)),
        (result) => emit(state.copyWith(
              deleteWorkPhotoState: ViewState.success,
            )));

    emit(state.copyWith(deleteWorkPhotoState: ViewState.idle));
  }

  FutureOr<void> _onUploadWorkPhoto(
      _UploadWorkPhoto event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(uploadWorkPhotoState: ViewState.loading));
    final result = await _uploadWorkPhotoUsecase(event.photos);
    result.fold(
        (error) =>
            emit(state.copyWith(uploadWorkPhotoState: ViewState.failure)),
        (result) => emit(state.copyWith(
              uploadWorkPhotoState: ViewState.success,
            )));

    emit(state.copyWith(uploadWorkPhotoState: ViewState.idle));
  }

  FutureOr<void> _onUpdateExperience(
      _UpdateExperience event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(updateExperienceState: ViewState.loading));
    final result = await _updateExperienceUsecase(event.param);
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

  FutureOr<void> _onSelectWorkPhotos(
      _SelectWorkPhotos event, Emitter<CandidatesState> emit) async {
    // This will return List<String>
    final images = await _filePickerService.pickImages();

    if (images.isEmpty) return;

    // Filter allowed extensions
    final allowedExtensions = ['.png', '.jpg', '.jpeg'];

    final validImages = images.where((path) {
      final ext = path.toLowerCase();
      return allowedExtensions.any((allowed) => ext.endsWith(allowed));
    }).toList();

    if (validImages.isEmpty) {
      ToastUtils.showRedToast('Only PNG and JPG images are allowed.');
      print('Invalid file types selected.');
      return;
    }

    // Convert to File objects
    final files = validImages.map((path) => File(path)).toList();

    // Assuming your state has a field like `workPhotos: List<File>`
    emit(state.copyWith(photos: files));

    // Debug print
    for (var f in files) {
      print('Selected file: ${f.path}');
    }
  }

  FutureOr<void> _onSelectWorkId(
      _SelectWorkId event, Emitter<CandidatesState> emit) async {
    final image = await _filePickerService.pickImage();
    if (image == null) return;
    if (image.endsWith('.png') ||
        image.endsWith('.jpg') ||
        image.endsWith('.jpeg')) {
      emit(state.copyWith(workId: File(image)));
      print('Selected file: ${image}');
    } else {
      print('extension $image');
      ToastUtils.showRedToast('Only PNG and JPG images are allowed.');
      print('inavlid tyoe');
    }
  }

  FutureOr<void> _onUploadWorkId(
      _UploadWorkId event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(uploadWorkIdState: ViewState.loading));
    final result = await _uploadWorkIDUsecase(event.entity);
    result.fold(
        (error) => emit(state.copyWith(uploadWorkIdState: ViewState.failure)),
        (education) => emit(state.copyWith(
              uploadWorkIdState: ViewState.success,
            )));

    emit(state.copyWith(uploadWorkIdState: ViewState.idle));
  }

  FutureOr<void> _onSelectAward(
      _SelectAward event, Emitter<CandidatesState> emit) async {
    final image = await _filePickerService.pickImage();
    if (image == null) return;
    if (image.endsWith('.png') ||
        image.endsWith('.jpg') ||
        image.endsWith('.jpeg')) {
      emit(state.copyWith(award: File(image)));
      print('Selected file: ${image}');
    } else {
      print('extension $image');
      ToastUtils.showRedToast('Only PNG and JPG images are allowed.');
      print('inavlid tyoe');
    }
  }

  FutureOr<void> _onAddAward(
      _AddAward event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(addAwardsState: ViewState.loading));
    final result = await _addAwardUsecase(event.param);
    result.fold(
        (error) => emit(state.copyWith(addAwardsState: ViewState.failure)),
        (result) => emit(state.copyWith(
              addAwardsState: ViewState.success,
            )));

    emit(state.copyWith(addAwardsState: ViewState.idle));
  }

  FutureOr<void> _onGetAward(
      _GetAward event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(getAwardsState: ViewState.loading));
    final result = await _getAwardsUsecase(NoParams());
    result.fold(
        (error) => emit(state.copyWith(getAwardsState: ViewState.failure)),
        (result) => emit(state.copyWith(
              getAwardsEntity: result,
              getAwardsState: ViewState.success,
            )));

    emit(state.copyWith(getAwardsState: ViewState.idle));
  }

  FutureOr<void> _onDeleteAward(
      _DeleteAward event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(deleteAwardsState: ViewState.loading));
    final result = await _deleteAwardUsecase(event.identity);
    result.fold(
        (error) => emit(state.copyWith(deleteAwardsState: ViewState.failure)),
        (result) => emit(state.copyWith(
              deleteAwardsState: ViewState.success,
            )));

    emit(state.copyWith(deleteAwardsState: ViewState.idle));
  }

  FutureOr<void> _onUpdateAward(
      _UpdateAward event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(updateAwardsState: ViewState.loading));
    final result = await _updateAwardUsecase(event.param);
    result.fold(
        (error) => emit(state.copyWith(updateAwardsState: ViewState.failure)),
        (result) => emit(state.copyWith(
              updateAwardsState: ViewState.success,
            )));

    emit(state.copyWith(updateAwardsState: ViewState.idle));
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

  FutureOr<void> _onUpdateEducationQualification(
      _UpdateEducationQualification event, Emitter<CandidatesState> emit) {
    emit(state.copyWith(educationQuaification: event.param));
  }

  FutureOr<void> _onCheckIfApplied(
      _CheckIfApplied event, Emitter<CandidatesState> emit) async {
    emit(state.copyWith(checkIfAppliedState: ViewState.loading));
    final result = await _checkIfAppliedUseCase(event.jobId);
    result.fold(
        (error) => emit(state.copyWith(
              checkIfAppliedState: ViewState.failure,
              errorMessage: error.message,
            )),
        (hasApplied) => emit(state.copyWith(
              checkIfAppliedState: ViewState.success,
              hasAppliedForJob: hasApplied,
            )));

    emit(state.copyWith(checkIfAppliedState: ViewState.idle));
  }
}
