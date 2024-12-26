import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:dartz/dartz.dart';

class GetAssignedCandidateUseCase
    implements UseCase<List<GetJobSeekerResponseEntity>, String> {
  GetAssignedCandidateUseCase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, List<GetJobSeekerResponseEntity>>> call(
      String params) {
    return repository.getAssignedCandidate(params);
  }
}
