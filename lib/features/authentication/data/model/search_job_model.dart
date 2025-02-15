import 'package:artisan_oga/features/authentication/domain/entities/search_job_entity.dart';

class SearchJobModel extends SearchJobEntity {
  const SearchJobModel({
    required super.id,
    required super.featured,
    required super.jobTitle,
    required super.jobDescription,
    required super.basicSalary,
    super.allowances,
    required super.city,
    required super.industry,
    required super.businessCategoryId,
    required super.jobStatus,
    required super.compensationType,
    required super.createdAt,
    required super.identity,
    required super.closed,
    required super.url,
  });

  /// **Convert JSON to Model**
  factory SearchJobModel.fromJson(Map<String, dynamic> json) {
    return SearchJobModel(
      id: json["id"],
      featured: json["featured"],
      jobTitle: json["job_title"],
      jobDescription: json["job_description"],
      basicSalary: json["basic_salary"],
      allowances: json["allowances"],
      city: json["city"],
      industry: json["industry"],
      businessCategoryId: json["business_category_id"],
      jobStatus: json["job_status"],
      compensationType: json["compensation_type"],
      createdAt: DateTime.parse(json["created_at"]),
      identity: json["identity"],
      closed: json["closed"],
      url: json["url"],
    );
  }

  /// **Convert Model to JSON**
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "featured": featured,
      "job_title": jobTitle,
      "job_description": jobDescription,
      "basic_salary": basicSalary,
      "allowances": allowances,
      "city": city,
      "industry": industry,
      "business_category_id": businessCategoryId,
      "job_status": jobStatus,
      "compensation_type": compensationType,
      "created_at": createdAt.toIso8601String(),
      "identity": identity,
      "closed": closed,
      "url": url,
    };
  }

  /// **Convert Entity to Model**
  factory SearchJobModel.fromEntity(SearchJobEntity entity) {
    return SearchJobModel(
      id: entity.id,
      featured: entity.featured,
      jobTitle: entity.jobTitle,
      jobDescription: entity.jobDescription,
      basicSalary: entity.basicSalary,
      allowances: entity.allowances,
      city: entity.city,
      industry: entity.industry,
      businessCategoryId: entity.businessCategoryId,
      jobStatus: entity.jobStatus,
      compensationType: entity.compensationType,
      createdAt: entity.createdAt,
      identity: entity.identity,
      closed: entity.closed,
      url: entity.url,
    );
  }
}
