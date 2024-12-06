import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/change_password_entity.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';

class ChangePasswordUseCase implements UseCase<bool, ChangePasswordEntity> {
  ChangePasswordUseCase(this.repository);
  final SettingsRepository repository;
  @override
  Future<Either<Failure, bool>> call(ChangePasswordEntity params) {
    return repository.changePassword(params);
  }
}
