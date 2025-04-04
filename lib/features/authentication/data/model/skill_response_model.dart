import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';

class SkillResponseModel extends SkillResponseEntity {
  SkillResponseModel(
      { super.id,  super.name,  super.categoryId});

  factory SkillResponseModel.fromJson(Map<String, dynamic> json) =>
      SkillResponseModel(
          id: json['id'] as int? ?? 0,
          name: json['name'] as String? ?? '',
          categoryId: json['category_id'] as int ?? 0);
}
