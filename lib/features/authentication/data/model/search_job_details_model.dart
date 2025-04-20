import 'package:artisan_oga/features/authentication/domain/entities/search_job_details_entity.dart';

class  SearchJobDetailsResultModel  extends   SearchJobDetailsResultEntity  {
  const SearchJobDetailsResultModel({
    required super.jobDetails,
    required List<ArtisanAssignedSkillModel> super.jobSkills,
  });

  factory SearchJobDetailsResultModel.fromJson(Map<String, dynamic> json) {
    final skillList = json['job_skills'] != null
        ? List<Map<String, dynamic>>.from(
            json['job_skills'] as List,
          )
        : <Map<String, dynamic>>[];
    return SearchJobDetailsResultModel(
      jobDetails: SearchJobDetailModel.fromJson(json["result"]),
      jobSkills: skillList.isNotEmpty
          ? skillList.map(ArtisanAssignedSkillModel.fromJson).toList().cast()
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {"result": jobDetails, "job_skills": jobSkills};
  }
}

class  SearchJobDetailModel extends SearchJobDetailEntity {
  const SearchJobDetailModel({
    required super.id,
    required super.hireType,
    required super.applicationDeadline,
    required super.city,
    required super.compensationType,
    required super.basicSalary,
    required super.description,
    required super.position,
    required super.jobDescription,
    required super.accomodation,
    required super.qualification,
    required super.jobTitle,
    required super.industry,
    required super.createdAt,
 //   required List<ArtisanAssignedSkillModel> super.jobSkills,
  });

  factory SearchJobDetailModel.fromJson(Map<String, dynamic> json) {
    final skillList = json['job_skills'] != null
        ? List<Map<String, dynamic>>.from(
            json['job_skills'] as List,
          )
        : <Map<String, dynamic>>[];
    return SearchJobDetailModel(
      id: json['id'],
      compensationType: json['compensation_type'],
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
      // jobSkills: skillList.isNotEmpty
      //     ? skillList.map(ArtisanAssignedSkillModel.fromJson).toList().cast()
      //     : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
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
      "created_at": createdAt,
    //  "job_skills": jobSkills,
      "compensation_type": compensationType
    };
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
