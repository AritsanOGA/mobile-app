import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/extensions/extention.dart';
import 'package:artisan_oga/features/home/data/data_source/home_remote_data_source.dart';
import 'package:artisan_oga/features/home/domain/entities/feautures_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepositoryImpl(
      {required this.homeRemoteDataSource, });
  @override
  Future<Either<Failure, List<FeaturedCandidatesEntity>>>
      getFeaturedCandidates() {
    return homeRemoteDataSource.getFeaturedCandidates().makeRequest();
  }
}
