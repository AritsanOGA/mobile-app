import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class StateUseCase implements UseCase<List<StateResponseEntity>, String> {
  StateUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, List<StateResponseEntity>>> call(String params) {
    return repository.getState(params);
  }
}
