import 'package:artisan_oga/features/authentication/domain/entities/search_job_details_entity.dart';

class SearchJobDetailModel extends SearchJobDetailEntity {
  const SearchJobDetailModel({
    required super.jobDetails,
    required super.jobSkills,
  });

  factory SearchJobDetailModel.fromJson(Map<String, dynamic> json) {
    return SearchJobDetailModel(
      jobDetails: SearchJobDetailsResultModel.fromJson(json["result"]),
      jobSkills: json["job_skills"],
    );
  }

  Map<String, dynamic> toJson() {
    return {"result": jobDetails, "job_skills": jobSkills};
  }

  factory SearchJobDetailModel.fromEntity(SearchJobDetailEntity entity) {
    return SearchJobDetailModel(
      jobDetails: entity.jobDetails,
      jobSkills: entity.jobSkills,
    );
  }
}

class SearchJobDetailsResultModel extends SearchJobDetailsResultEntity {
  const SearchJobDetailsResultModel({
    required super.hireType,
    required super.applicationDeadline,
    required super.city,
    required super.basicSalary,
    required super.description,
    required super.position,
    required super.jobDescription,
    required super.accomodation,
    required super.qualification,
    required super.jobTitle,
    required super.industry,
    required super.createdAt,
    required super.itSkills,
  });

  factory SearchJobDetailsResultModel.fromJson(Map<String, dynamic> json) {
    return SearchJobDetailsResultModel(
      hireType: json['hire_type'] ?? '',
      applicationDeadline: json['application_deadline'] ?? '',
      city: json['city'] ?? '',
      basicSalary: json['basic_salary'] ?? '',
      description: json['description'] ?? '',
      position: json['position'] ?? '',
      jobDescription: json['job_description'] ?? '',
      accomodation: json['accommodation_available'] ?? '',
      qualification: json['level_of_education'] ?? '',
      jobTitle: json['job_title'] ?? '',
      industry: json['industry'] ?? '',
      createdAt: DateTime.parse(json['created_at']),
      itSkills: json["it_skills"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "hire_type": hireType,
      "application_deadline": applicationDeadline,
      "city": city,
      "basic_salary": basicSalary,
      "description": description,
      "position": position,
      "job_description": jobDescription,
      "accommodation_available": accomodation,
      "level_of_education": qualification,
      "job_title": jobTitle,
      "industry": industry,
      "created_at": createdAt
    };
  }

  factory SearchJobDetailsResultModel.fromEntity(
      SearchJobDetailsResultEntity entity) {
    return SearchJobDetailsResultModel(
      hireType: entity.hireType,
      itSkills: entity.itSkills,
      applicationDeadline: entity.applicationDeadline,
      city: entity.city,
      basicSalary: entity.basicSalary,
      description: entity.description,
      position: entity.position,
      jobDescription: entity.jobDescription,
      accomodation: entity.accomodation,
      qualification: entity.qualification,
      jobTitle: entity.jobTitle,
      industry: entity.industry,
      createdAt: entity.createdAt,
    );
  }
}
