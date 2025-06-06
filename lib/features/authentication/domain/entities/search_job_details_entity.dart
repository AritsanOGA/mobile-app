import 'package:equatable/equatable.dart';

class SearchJobDetailsResultEntity extends Equatable {
  const SearchJobDetailsResultEntity({
    required this.jobDetails,
    required this.jobSkills,
  });
  final SearchJobDetailEntity jobDetails;
  final List<ArtisanAssignedSkillEntity> jobSkills;

  @override
  List<Object> get props => [
        jobDetails,
        jobSkills,
      ];
}

class SearchJobDetailEntity extends Equatable {
  const SearchJobDetailEntity({
    required this.id,
    required this.hireType,
    required this.applicationDeadline,
    required this.city,
    required this.basicSalary,
    required this.description,
    required this.position,
    required this.compensationType,
    required this.jobDescription,
    required this.qualification,
    required this.accomodation,
    required this.industry,
    required this.createdAt,
    required this.jobTitle,

    /// required this.jobSkills,
  });
  final int id;
  final String hireType;
  final String applicationDeadline;
  final String city;
  final String basicSalary;
  final String description;
  final String position;
  final String compensationType;
  final String jobDescription;
  final String accomodation;
  final String qualification;
  final String jobTitle;
  final String industry;
  final DateTime createdAt;
//  final List<ArtisanAssignedSkillEntity> jobSkills;

  @override
  List<Object> get props => [
        id,
        hireType,
        applicationDeadline,
        city,
        basicSalary,
        description,
        position,
        compensationType,
        jobDescription,
        qualification,
        accomodation,
        industry,
        createdAt,
        jobTitle,
        // jobSkills
      ];
}

class ArtisanAssignedSkillEntity extends Equatable {
  final String? skill;

  const ArtisanAssignedSkillEntity({this.skill});

  @override
  List<Object?> get props => [skill];
}
