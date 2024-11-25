import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';

class PostJobModel extends PostJobEntity {
  PostJobModel(
      {required super.jobTitle,
      required super.companyName,
      required super.category,
      required super.workType,
      required super.jobDescription,
      required super.skills,
      required super.position,
      required super.hireType,
      required super.categoryId,
      required super.yearsOfExperience,
      required super.levelOfEducation,
      required super.skillLevel,
      required super.maxAmount,
      required super.minAmount,
      required super.country,
      required super.state,
      required super.city,
      required super.available,
      required super.availableFor,
      required super.compensationType,
      required super.gender,
      required super.officeAddress,
      required super.applicationDeadline});

  factory PostJobModel.fromJson(Map<String, dynamic> json) => PostJobModel(
     
      jobTitle: json['jobTitle'] ,
      companyName: json['companyName'],
      category: json['category'],
      workType: json['workType'],
      jobDescription: json['jobDescription'],
      skills: json['skill'],
      position: json['position'],
      hireType: json['hireType'],
      categoryId: json['categoryId'],
      yearsOfExperience: json['yearsOfExperience'],
      levelOfEducation: json['levelOfEducation'],
      skillLevel: json['skillLevel'],
      maxAmount: json['maxAmount'],
      minAmount: json['minAmount'],
      country: json['country'],
      state: json['state'],
      city: json['city'],
      available: json['available'],
      availableFor: json['availableFor'],
      compensationType: json['compensationType'],
      gender: json['gender'],
      officeAddress: json['officeAddress'],
      applicationDeadline: json['applicationDeadline']);
}
