import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_without_interview_entity.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class RejectCandidateWithoutIntervieUseCase
    implements UseCase<bool, RejectCandidateWithoutInterviewEntity> {
  RejectCandidateWithoutIntervieUseCase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, bool>> call(entity) {
    return repository.rejectCandidateWithoutInterview(entity);
  }
}
