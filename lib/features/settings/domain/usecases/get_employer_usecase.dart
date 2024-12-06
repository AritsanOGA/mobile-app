import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_employer_response_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';

class GetEmployerProfilerUsecase
    implements UseCase<List<GetEmployerResponseEntity>, NoParams> {
  GetEmployerProfilerUsecase(this.repository);
  final SettingsRepository repository;
  @override
  Future<Either<Failure, List<GetEmployerResponseEntity>>> call(
      NoParams params) {
    return repository.getEmployerProfile();
  }
}
