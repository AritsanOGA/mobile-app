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

  factory PostJobModel.fromEntity(PostJobEntity entity) => PostJobModel(
      jobTitle: entity.jobTitle,
      companyName: entity.companyName,
      category: entity.category,
      workType: entity.workType,
      jobDescription: entity.jobDescription,
      skills: entity.skills,
      position: entity.position,
      hireType: entity.hireType,
      categoryId: entity.categoryId,
      yearsOfExperience: entity.yearsOfExperience,
      levelOfEducation: entity.levelOfEducation,
      skillLevel: entity.skillLevel,
      maxAmount: entity.maxAmount,
      minAmount: entity.minAmount,
      country: entity.country,
      state: entity.state,
      city: entity.city,
      available: entity.available,
      availableFor: entity.availableFor,
      compensationType: entity.compensationType,
      gender: entity.gender,
      officeAddress: entity.officeAddress,
      applicationDeadline: entity.applicationDeadline);

  Map<String, dynamic> toJson() => {
        "job_title": jobTitle,
        "company_name": companyName,
        "category": category,
        "work_type": workType,
        "job_description": jobDescription,
        "industry": category,
        "position": position,
        "hire_type": hireType,
        "business_category_id": categoryId,
        "gender": gender,
        "experience": yearsOfExperience,
        "level_of_education": levelOfEducation,
        "skill_level": skillLevel,
        "min_amount": minAmount,
        "max_amount": maxAmount,
        "state": state,
        "city": city,
        "application_deadline": applicationDeadline,
        "office_address": officeAddress,
        "accommodation_available": available,
        "accommodation_for": availableFor,
        // "payment_method": paymentMethod,
        // "currency": currency,
        "compensation_type": compensationType,
        "country": country,
        "artisan_skills": skills,
        "commute_type": workType,
      };

 

  //static Future<PostJobEntity> fromJson(Map<String, dynamic> result) {}
}

//   Map<String, String> toJson() => {
//         'options': email,
//         'password': password,
//       };
// }
