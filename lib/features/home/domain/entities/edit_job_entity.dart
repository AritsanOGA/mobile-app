import 'package:equatable/equatable.dart';

class EditJobEntity extends Equatable {
  const EditJobEntity({
    required this.jobId,
    required this.jobTitle,
    required this.jobSkillId,
    required this.companyName,
    // required this.category,
    // required this.workType,
    required this.jobDescription,
    required this.skills,
    required this.position,
    required this.hireType,
    required this.categoryId,
    required this.yearsOfExperience,
    required this.levelOfEducation,
    // required this.skillLevel,
    required this.maxAmount,
    required this.minAmount,
    //  required this.country,
    required this.state,
    required this.city,
    required this.available,
    required this.availableFor,
    required this.compensationType,
    required this.gender,
    required this.officeAddress,
    required this.applicationDeadline,
    required this.quantity,
    // required this.currency,
  });
  final String jobId;
  final String jobTitle;
  final String companyName;
  //final String category;
  final String jobSkillId;
  //final String workType;
  final String jobDescription;
  final List<String> skills;
  final String position;
  final String hireType;
  final String categoryId;
  final String yearsOfExperience;
  final String levelOfEducation;
//  final String skillLevel;
  final String maxAmount;
  final String minAmount;
  //final String country;
  final String state;
  final String city;
  final String available;
  final String availableFor;
  final String compensationType;
  final String gender;
  final String officeAddress;
  final String applicationDeadline;
  final String quantity;
//  final String currency;

  EditJobEntity copyWith({
    String? jobTitle,
    String? jobId,
    String? companyName,
    String? category,
    //  String? workType,
    String? jobDescription,
    List<String>? skills,
    String? position,
    String? hireType,
    String? jobSkillId,
    String? categoryId,
    String? yearsOfExperience,
    String? levelOfEducation,
    //   String? skillLevel,
    String? maxAmount,
    String? minAmount,
    // String? country,
    String? state,
    String? city,
    String? available,
    String? availableFor,
    String? compensationType,
    String? gender,
    String? officeAddress,
    String? applicationDeadline,
    String? quantity,
    // String? currency
  }) {
    return EditJobEntity(
        jobId: jobId ?? this.jobId,
        // currency: currency ?? this.currency,
        jobTitle: jobTitle ?? this.jobTitle,
        companyName: companyName ?? this.companyName,
        // category: category ?? this.category,
        jobSkillId: jobSkillId ?? this.jobSkillId,
        //  workType: workType ?? this.workType,
        jobDescription: jobDescription ?? this.jobDescription,
        skills: skills ?? this.skills,
        position: position ?? this.position,
        hireType: hireType ?? this.hireType,
        categoryId: categoryId ?? this.categoryId,
        yearsOfExperience: yearsOfExperience ?? this.yearsOfExperience,
        levelOfEducation: levelOfEducation ?? this.levelOfEducation,
        //skillLevel: skillLevel ?? this.skillLevel,
        maxAmount: maxAmount ?? this.maxAmount,
        minAmount: minAmount ?? this.minAmount,
        // country: country ?? this.country,
        state: state ?? this.state,
        city: city ?? this.city,
        available: available ?? this.available,
        availableFor: availableFor ?? this.availableFor,
        compensationType: compensationType ?? this.compensationType,
        gender: gender ?? this.gender,
        officeAddress: officeAddress ?? this.officeAddress,
        quantity: quantity ?? this.quantity,
        applicationDeadline: applicationDeadline ?? this.applicationDeadline);
  }

  @override
  List<Object?> get props => [
        jobTitle,
        companyName,
        // category,
        //workType,
        jobDescription,
        skills,
        position,
        hireType,
        categoryId,
        yearsOfExperience,
        levelOfEducation,
        //skillLevel,
        maxAmount,
        minAmount,
        // country,
        state,
        city,
        available,
        availableFor,
        compensationType,
        gender,
        officeAddress,
        quantity,
        applicationDeadline,
      ];
}
