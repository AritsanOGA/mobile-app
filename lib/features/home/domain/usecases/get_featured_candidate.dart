import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';

import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetFeaturedCandidateUseCase
    implements UseCase<List<FeaturedCandidatesEntity>, NoParams> {
  GetFeaturedCandidateUseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, List<FeaturedCandidatesEntity>>> call(
      NoParams params) {
    return repository.getFeaturedCandidates();
  }
}
