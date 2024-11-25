import 'package:equatable/equatable.dart';

class PostJobEntity extends Equatable {
  const PostJobEntity({
    required this.jobTitle,
    required this.companyName,
    required this.category,
    required this.workType,
    required this.jobDescription,
    required this.skills,
    required this.position,
    required this.hireType,
    required this.categoryId,
    required this.yearsOfExperience,
    required this.levelOfEducation,
    required this.skillLevel,
    required this.maxAmount,
    required this.minAmount,
    required this.country,
    required this.state,
    required this.city,
    required this.available,
    required this.availableFor,
    required this.compensationType,
    required this.gender,
    required this.officeAddress,
    required this.applicationDeadline,
  });

  final String jobTitle;
  final String companyName;
  final String category;
  final String workType;
  final String jobDescription;
  final String skills;
  final String position;
  final String hireType;
  final int categoryId;
  final int yearsOfExperience;
  final String levelOfEducation;
  final String skillLevel;
  final int maxAmount;
  final int minAmount;
  final String country;
  final String state;
  final String city;
  final String available;
  final String availableFor;
  final String compensationType;
  final String gender;
  final String officeAddress;
  final String applicationDeadline;

  @override
  List<Object?> get props => [
        jobTitle,
        companyName,
        category,
        workType,
        jobDescription,
        skills,
        position,
        hireType,
        categoryId,
        yearsOfExperience,
        levelOfEducation,
        skillLevel,
        maxAmount,
        minAmount,
        country,
        state,
        city,
        available,
        availableFor,
        compensationType,
        gender,
        officeAddress,
        applicationDeadline,
      ];
}
