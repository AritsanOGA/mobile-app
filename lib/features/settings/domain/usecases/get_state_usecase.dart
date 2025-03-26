import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';

class StateUseCase implements UseCase<List<StateResponseEntity>, String> {
  StateUseCase(this.repository);
  final SettingsRepository repository;
  @override
  Future<Either<Failure, List<StateResponseEntity>>> call(String params) {
    return repository.getState(params);
  }
}
