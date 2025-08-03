import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/candidate_search_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class CandidateSearchUsecase
    implements UseCase<List<CandidateSearchEntity>, NoParams> {
  CandidateSearchUsecase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, List<CandidateSearchEntity>>> call(NoParams params) {
    return repository.candidateSearch();
  }
}
