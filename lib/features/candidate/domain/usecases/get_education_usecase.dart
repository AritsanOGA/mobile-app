import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class GetEducationUsecase
    implements UseCase<List<GetEducationEntity>, NoParams> {
  GetEducationUsecase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, List<GetEducationEntity>>> call(NoParams params) {
    return repository.getEducation();
  }
}
