
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteWorkPhotoUsecase implements UseCase<bool, String> {
  DeleteWorkPhotoUsecase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, bool>> call(String identity) {
    return repository.deleteWorkPhoto(identity);
  }
}
