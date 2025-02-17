import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_details_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SearchJobDetailUseCase implements UseCase<SearchJobDetailEntity, String> {
  SearchJobDetailUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, SearchJobDetailEntity>> call(String params) {
    return repository.searchJobDetail(params);
  }
}
