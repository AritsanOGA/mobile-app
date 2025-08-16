import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/update_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateAwardUsecase implements UseCase<bool, UpdateAwardEntity> {
  UpdateAwardUsecase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, bool>> call(UpdateAwardEntity entity) {
    return repository.updateAwards(entity);
  }
}
