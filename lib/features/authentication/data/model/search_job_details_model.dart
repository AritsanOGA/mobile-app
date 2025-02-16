import 'package:artisan_oga/features/authentication/domain/entities/search_job_details_entity.dart';

class SearchJobDetailModel extends SearchJobDetailEntity {
  const SearchJobDetailModel({
    required String hireType,
    required String applicationDeadline,
    required String city,
    required String basicSalary,
    required String description,
    required String position,
    required String jobDescription,
    required String accomodation,
    required String qualification,
    required String jobTitle,
    required String industry,
    required DateTime createdAt,
  }) : super(
          hireType: hireType,
          applicationDeadline: applicationDeadline,
          city: city,
          basicSalary: basicSalary,
          description: description,
          position: position,
          jobDescription: jobDescription,
          accomodation: accomodation,
          qualification: qualification,
          jobTitle: jobTitle,
          industry: industry,
          createdAt: createdAt,
        );

  /// **Factory method to create an instance from JSON**
  factory SearchJobDetailModel.fromJson(Map<String, dynamic> json) {
    return SearchJobDetailModel(
      hireType: json['hire_type'] ?? '',
      applicationDeadline: json['application_deadline'] ?? '',
      city: json['city'] ?? '',
      basicSalary: json['basic_salary'] ?? '',
      description: json['description'] ?? '',
      position: json['position'] ?? '',
      jobDescription: json['job_description'] ?? '',
      accomodation: json['accomodation'] ?? '',
      qualification: json['qualification'] ?? '',
      jobTitle: json['job_title'] ?? '',
      industry: json['industry'] ?? '',
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  /// **Converts model instance to JSON**
  Map<String, dynamic> toJson() {
    return {
      "hire_type": hireType,
      "application_deadline": applicationDeadline,
      "city": city,
      "basic_salary": basicSalary,
      "description": description,
      "position": position,
      "job_description": jobDescription,
      "accomodation": accomodation,
      "qualification": qualification,
      "job_title": jobTitle,
      "industry": industry,
      "created_at": createdAt.toIso8601String(),
    };
  }
}
