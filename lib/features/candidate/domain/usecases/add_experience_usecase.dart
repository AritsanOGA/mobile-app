import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class AddExperienceUsecase implements UseCase<bool, AddExperienceEntity> {
  AddExperienceUsecase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, bool>> call(AddExperienceEntity entity) {
    return repository.addExperience(entity);
  }
}
