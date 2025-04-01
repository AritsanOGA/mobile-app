import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/settings/domain/entities/notification_entity.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';

class GetJobSeekerNotificationUsecase
    implements UseCase<List<NotificationEntity>, NoParams> {
  GetJobSeekerNotificationUsecase(this.repository);
  final SettingsRepository repository;
  @override
  Future<Either<Failure, List<NotificationEntity>>> call(NoParams params) {
    return repository.getCandidateNotification();
  }
}
