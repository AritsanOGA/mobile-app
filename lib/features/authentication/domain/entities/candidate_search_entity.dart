import 'package:equatable/equatable.dart';

class CandidateSearchEntity extends Equatable {
  const CandidateSearchEntity({
    required this.id,
    required this.fullName,
    required this.identity,
    required this.city,
    required this.availability,
    required this.profileImage,
    required this.categoryName
  });

  final int id;
  final String fullName;
  final String identity;
  final String city;
  final String availability;
  final String profileImage;
  final String categoryName;

  @override
  List<Object?> get props => [
        id,
        fullName,
        identity,
        city,
        availability,
        profileImage,
        categoryName
      ];
}
