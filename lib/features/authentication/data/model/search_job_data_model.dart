import 'package:artisan_oga/features/authentication/domain/entities/search_job_data_entity.dart';

class SearchJobDataModel extends SearchJobDataEntity {
  const SearchJobDataModel(
      {required super.category, required super.skill, required super.location});

  factory SearchJobDataModel.fromEntity(SearchJobDataEntity entity) =>
      SearchJobDataModel(
          category: entity.category,
          skill: entity.skill,
          location: entity.location);

  Map<String, dynamic> toJson() => {
        'category': category,
        'skill': skill,
        "location": location,
      };
}
