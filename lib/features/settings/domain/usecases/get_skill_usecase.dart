
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/settings/domain/repositories/settings_repository.dart';
import 'package:dartz/dartz.dart';

class SkillUseCase implements UseCase<List<SkillResponseEntity>, String> {
  SkillUseCase(this.repository);
  final SettingsRepository repository;
  @override
  Future<Either<Failure, List<SkillResponseEntity>>> call(String params) {
    return repository.getSkill(params);
  }
}
