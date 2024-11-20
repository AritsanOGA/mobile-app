import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';

class CategoryResponseModel extends CategoryResponseEntity {
  CategoryResponseModel({required super.id, required super.name});

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      CategoryResponseModel(
            id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      );

}
