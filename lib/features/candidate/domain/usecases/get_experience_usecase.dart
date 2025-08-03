import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class GetExperienceUsecase
    implements UseCase<List<GetExperienceEntity>, NoParams> {
  GetExperienceUsecase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, List<GetExperienceEntity>>> call(NoParams params) {
    return repository.getExperience();
  }
}
