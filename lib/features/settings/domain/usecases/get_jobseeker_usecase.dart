import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';

import '../entities/get_js_resonse_entities.dart';

class GetJobSeekeProfileUsecase
    implements UseCase<GetJobSeekerResponseEntity, NoParams> {
  GetJobSeekeProfileUsecase(this.repository);
  final SettingsRepository repository;
  @override
  Future<Either<Failure, GetJobSeekerResponseEntity>> call(NoParams params) {
    return repository.getJobSeekerProfile();
  }
}
