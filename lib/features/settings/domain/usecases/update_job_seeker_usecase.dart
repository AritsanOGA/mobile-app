import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateJobSeekerUsecase
    implements UseCase<bool, UpdateJobSeekerProfileEntity> {
  UpdateJobSeekerUsecase(this.repository);
  final SettingsRepository repository;
  @override
  Future<Either<Failure, bool>> call(UpdateJobSeekerProfileEntity params) {
    return repository.updateJobSeekerProfile(params);
  }
}
