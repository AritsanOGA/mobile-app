import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class CategoryUseCase
    implements UseCase<List<CategoryResponseEntity>, NoParams> {
  CategoryUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, List<CategoryResponseEntity>>> call(NoParams params) {
    return repository.getCategory();
  }
}
