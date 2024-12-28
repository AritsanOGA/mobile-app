import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class CandidateSkillUseCase
    implements UseCase<List<CandidateSkillEntity>, NoParams> {
  CandidateSkillUseCase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, List<CandidateSkillEntity>>> call(NoParams params) {
    return repository.getCandidateSkills();
  }
}
