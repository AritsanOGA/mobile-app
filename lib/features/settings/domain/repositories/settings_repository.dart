import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/settings/domain/entities/change_password_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_employer_response_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/get_js_resonse_entities.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_employer_profile_entity.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SettingsRepository {
  Future<Either<Failure, GetEmployerResponseEntity>> getEmployerProfile();
  Future<Either<Failure, GetJobSeekerResponseEntity>> getJobSeekerProfile();
  Future<Either<Failure, bool>> updateJobSeekerProfile(
      UpdateJobSeekerProfileEntity entity);
  Future<Either<Failure, bool>> updateEmployerProfile(
      UpdateEmployerProfileEntity entity);
  Future<Either<Failure, bool>> changePassword(ChangePasswordEntity entit);
}
