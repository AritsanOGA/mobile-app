import 'package:artisan_oga/features/home/domain/entities/features_candiddate_entity.dart';

abstract class SettingsRemoteDataSource {
  Future<List<FeaturedCandidatesEntity>> getCandidateProfile();
  Future<List<FeaturedCandidatesEntity>> getJobSeekerProfile();
  Future<List<FeaturedCandidatesEntity>> editJobSeekerProfile();
  Future<List<FeaturedCandidatesEntity>> editCandidateProfile();
  Future<List<FeaturedCandidatesEntity>> changePassword();
}
