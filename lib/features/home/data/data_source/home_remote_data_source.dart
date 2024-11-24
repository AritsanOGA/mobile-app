import 'package:artisan_oga/core/app_constants/app_api_endpoints.dart';
import 'package:artisan_oga/core/services/api_service.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/home/data/model/featured_candidate_model.dart';
import 'package:artisan_oga/features/home/domain/entities/feautures_candiddate_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<FeaturedCandidatesEntity>> getFeaturedCandidates();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl(this.api, this.userService);

  final ApiService api;
  final UserService userService;

  @override
  Future<List<FeaturedCandidatesEntity>> getFeaturedCandidates() async {
    final result = await api.get(
      url: AppApiEndpoint.getFeaturedCandidates,
      headers: userService.authorizationHeader,
    ) as Map<String, dynamic>;

    return List<dynamic>.from(result['data'] as List)
        .map(
          (e) => FeaturedCandidateModel.fromJson(
            e as Map<String, dynamic>,
          ),
        )
        .toList();
  }
}
