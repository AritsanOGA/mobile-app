import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/entities/reject_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class RejectCandidateUseCase implements UseCase<bool, RejectCandidateEntity> {
  RejectCandidateUseCase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, bool>> call( entity) {
    return repository.rejectCandidate(entity);
  }
}
