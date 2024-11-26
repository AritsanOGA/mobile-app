import 'package:equatable/equatable.dart';

class FeaturedCandidatesEntity extends Equatable {
  final int id;
  final String name;
  final String email;
  final String availability;
  final dynamic resumes;
  final String phone;
  final String? dateOfBirth;
  final String? serviceDescription;
  final int country;
  final String state;
  final String streetAddress;
  final String? compensationType;
  final String categories;
  final String yearsOfWorkExperience;
  final DateTime createdAt;
  final DateTime updatedAt;

  FeaturedCandidatesEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.availability,
    required this.resumes,
    required this.phone,
    this.dateOfBirth,
    this.serviceDescription,
    required this.country,
    required this.state,
    required this.streetAddress,
    this.compensationType,
    required this.categories,
    required this.yearsOfWorkExperience,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  List<Object?> get props => [
        id,
        name,
        email,
        availability,
        resumes,
        phone,
        dateOfBirth,
        serviceDescription,
        country,
        state,
        streetAddress,
        compensationType,
        categories,
        yearsOfWorkExperience,
        createdAt,
        updatedAt,
      ];
}
