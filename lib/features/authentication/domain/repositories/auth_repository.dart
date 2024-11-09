import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/signup_entity.dart';
import 'package:dartz/dartz.dart';


abstract class AuthRepository {
  Future<Either<Failure, bool>> login(LoginEntity param);
  Future<Either<Failure, bool>> signup(SignupEntity param);
  Future<Either<Failure, bool>> getUserData();
}