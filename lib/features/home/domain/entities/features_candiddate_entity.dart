import 'package:equatable/equatable.dart';

class FeaturedCandidatesEntity extends Equatable {
   final int id;
    final String role;
    final String fullName;
    final String availability;
    final String workExperience;
    final String profileImage;
    final String city;
  FeaturedCandidatesEntity({
     required this.id,
        required this.role,
        required this.fullName,
        required this.availability,
        required this.workExperience,
        required this.profileImage,
        required this.city,
  });
  @override
  List<Object?> get props => [
        id,
        role,
        fullName,
        availability,
        workExperience,
        profileImage,
        city,
      ];
}
