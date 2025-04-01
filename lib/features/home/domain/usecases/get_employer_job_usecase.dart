import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetEmployerJobUseCase
    implements UseCase<List<EmployerJobResponseEntity>, NoParams> {
  GetEmployerJobUseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, List<EmployerJobResponseEntity>>> call(
      NoParams params) {
    return repository.getEmployerJob();
  }
}
