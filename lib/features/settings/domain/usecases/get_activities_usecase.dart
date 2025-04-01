import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/settings/domain/entities/activities_entity.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';

class GetActivitiesUsecase
    implements UseCase<List<ActivitiesEntity>, NoParams> {
  GetActivitiesUsecase(this.repository);
  final SettingsRepository repository;
  @override
  Future<Either<Failure, List<ActivitiesEntity>>> call(NoParams params) {
    return repository.getActivities();
  }
}
