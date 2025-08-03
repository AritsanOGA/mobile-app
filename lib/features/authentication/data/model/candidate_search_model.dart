import 'package:artisan_oga/features/authentication/domain/entities/candidate_search_entity.dart';

class CandidateSearchModel extends CandidateSearchEntity {
  CandidateSearchModel({
    required super.id,
    required super.fullName,
    required super.identity,
    required super.city,
    required super.availability,
    required super.profileImage,
  });
  factory CandidateSearchModel.fromJson(Map<String, dynamic> json) {
    return CandidateSearchModel(
      id: json['id'],
      fullName: json['full_name'],
      identity: json['identity'],
      city: json['city'],
      availability: json['availability'],
      profileImage: json['profile_image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'full_name': fullName,
      'identity': identity,
      'city': city,
      'availability': availability,
      'profile_image': profileImage,
    };
  }
}
