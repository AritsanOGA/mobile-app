import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/repositories/auth_repository.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class CountryUseCase implements UseCase<List<CountryResponseEntity>, NoParams> {
  CountryUseCase(this.repository);
  final  HomeRepository repository;
  @override
  Future<Either<Failure, List<CountryResponseEntity>>> call(NoParams params) {
    return repository.getCountries();
  }
}
