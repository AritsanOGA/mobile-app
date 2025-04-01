import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_profile_entity.dart';
import 'package:artisan_oga/features/candidate/domain/repositories/candidate_repository.dart';
import 'package:dartz/dartz.dart';

class CandidateProfileUseCase
    implements UseCase<CandidateProfileEntity, String> {
  CandidateProfileUseCase(this.repository);
  final CandidateRepository repository;
  @override
  Future<Either<Failure, CandidateProfileEntity>> call(String params) {
    return repository.getCandidateProfile(params);
  }
}
