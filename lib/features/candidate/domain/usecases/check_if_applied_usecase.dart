import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class CheckIfAppliedUseCase
    implements UseCase<bool, ({String jobId, String identity})> {
  CheckIfAppliedUseCase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, bool>> call(({String jobId, String identity}) params) {
    return repository.checkIfApplied(params.jobId, params.identity);
  }
}
