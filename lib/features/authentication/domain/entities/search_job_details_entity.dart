import 'package:equatable/equatable.dart';

class SearchJobDetailEntity extends Equatable {
  const SearchJobDetailEntity({
    required this.jobDetails,
    required this.jobSkills,
  });
  final SearchJobDetailsResultEntity jobDetails;
  final List<ArtisanAssignedSkillEntity> jobSkills;

  @override
  List<Object> get props => [
        jobDetails,
        jobSkills,
      ];
}

class SearchJobDetailsResultEntity extends Equatable {
  const SearchJobDetailsResultEntity({
    required this.hireType,
    required this.applicationDeadline,
    required this.city,
    required this.basicSalary,
    required this.description,
    required this.position,
    required this.jobDescription,
    required this.qualification,
    required this.accomodation,
    required this.industry,
    required this.createdAt,
    required this.jobTitle,
   
  });
  final String hireType;
  final String applicationDeadline;
  final String city;
  final String basicSalary;
  final String description;
  final String position;
  final String jobDescription;
  final String accomodation;
  final String qualification;
  final String jobTitle;
  final String industry;
  final DateTime createdAt;


  @override
  List<Object> get props => [
        hireType,
        applicationDeadline,
        city,
        basicSalary,
        description,
        position,
        jobDescription,
        qualification,
        accomodation,
        industry,
        createdAt,
        jobTitle,

      ];
}

class ArtisanAssignedSkillEntity extends Equatable {
  final String? skill;

  const ArtisanAssignedSkillEntity({this.skill});

  @override
  List<Object?> get props => [skill];
}
