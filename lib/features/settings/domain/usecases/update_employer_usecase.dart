import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_employer_profile_entity.dart';

import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateEmployerUseCase
    implements UseCase<bool, UpdateEmployerProfileEntity> {
  UpdateEmployerUseCase(this.repository);
  final SettingsRepository repository;
  @override
  Future<Either<Failure, bool>> call(UpdateEmployerProfileEntity params) {
    return repository.updateEmployerProfile(params);
  }
}
