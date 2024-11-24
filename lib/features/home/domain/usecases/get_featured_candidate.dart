import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';

import 'package:artisan_oga/features/home/domain/entities/feautures_candiddate_entity.dart';
import 'package:artisan_oga/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetFeaturedCandidateseCase
    implements UseCase<List<FeaturedCandidatesEntity>, NoParams> {
  GetFeaturedCandidateseCase(this.repository);
  final HomeRepository repository;
  @override
  Future<Either<Failure, List<FeaturedCandidatesEntity>>> call(
      NoParams params) {
    return repository.getFeaturedCandidates();
  }
}
// class HomeBloc extends Bloc<HomeEvent, HomeState> {
//   // HomeBloc({GetFeaturedCandidateseCase? getFeaturedCandidates})
//   //     : _getFeaturedCandidateseCase = getFeaturedCandidates ?? locator(),
//   //       super(_Initial()) {
//   //   on<_GetFeaturedCandidate>(_onGetFeaturedCandidate);
//   // }
//   // final GetFeaturedCandidateseCase _getFeaturedCandidateseCase;
//   // FutureOr<void> _onGetFeaturedCandidate(event, Emitter<HomeState> emit) {}
// }