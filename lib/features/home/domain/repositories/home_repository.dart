import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository{
   Future<Either<Failure, List<FeaturedCandidatesEntity>>> getFeaturedCandidates();
}