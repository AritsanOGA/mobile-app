import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_data_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SearchJobUseCase implements UseCase<List<SearchJobEntity>, SearchJobDataEntity> {
  SearchJobUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, List<SearchJobEntity>>> call(SearchJobDataEntity params) {
    return repository.searchJob(params);
  }
}
