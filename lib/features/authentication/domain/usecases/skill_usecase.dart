import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class SkillUseCase
    implements UseCase<List<SkillResponseEntity>, String> {
  SkillUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, List<SkillResponseEntity>>> call(String  params) {
    return repository.getSkill(params);
  }
}