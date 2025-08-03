import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteEducationUsecase implements UseCase<bool, String> {
  DeleteEducationUsecase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, bool>> call(String identity) {
    return repository.deleteEducation(identity);
  }
}
