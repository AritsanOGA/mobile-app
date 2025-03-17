import 'package:artisan_oga/features/authentication/domain/entities/search_job_details_entity.dart';

class SearchJobDetailModel extends SearchJobDetailEntity {
  const SearchJobDetailModel({
    required super.jobDetails,
    required List<ArtisanAssignedSkillModel> super.jobSkills,
  });

  factory SearchJobDetailModel.fromJson(Map<String, dynamic> json) {
    final skillList = json['job_skills'] != null
        ? List<Map<String, dynamic>>.from(
            json['job_skills'] as List,
          )
        : <Map<String, dynamic>>[];
    return SearchJobDetailModel(
      jobDetails: SearchJobDetailsResultModel.fromJson(json["result"]),
      jobSkills: skillList.isNotEmpty
          ? skillList.map(ArtisanAssignedSkillModel.fromJson).toList().cast()
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {"result": jobDetails, "job_skills": jobSkills};
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

class ArtisanAssignedSkillModel extends ArtisanAssignedSkillEntity {
  ArtisanAssignedSkillModel({
    required super.skill,
  });

  factory ArtisanAssignedSkillModel.fromEntity(
          ArtisanAssignedSkillEntity entity) =>
      ArtisanAssignedSkillModel(
        skill: entity.skill,
      );
  factory ArtisanAssignedSkillModel.fromJson(Map<String, dynamic> json) =>
      ArtisanAssignedSkillModel(
        skill: json["skills"],
      );

  Map<String, dynamic> toJson() => {
        "skills": skill,
      };
}
