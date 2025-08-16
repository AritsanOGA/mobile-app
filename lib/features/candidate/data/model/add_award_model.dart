import 'package:artisan_oga/features/candidate/domain/entities/add_awards_entity.dart';
import 'package:dio/dio.dart';

class AddAwardModel extends AddAwardEntity {
  AddAwardModel({
    required super.certificate,
    required super.title,
    required super.identity,
  });
  factory AddAwardModel.fromEntity(AddAwardEntity entity) => AddAwardModel(
        identity: entity.identity,
        certificate: entity.certificate,
        title: entity.title,
      );
  factory AddAwardModel.fromJson(Map<String, dynamic> json) {
    return AddAwardModel(
      certificate: json['image'],
      title: json['title'],
      identity: json['identity'],
    );
  }

  Future<FormData> toJson() async {
    final Map<String, dynamic> formDataMap = {
      'identity': identity,
      'title': title,
    };
    if (certificate?.path != null) {
      formDataMap['image'] = await MultipartFile.fromFile(
        "${certificate?.path}",
        filename: "${certificate?.path.split('/').last}",
      );
    }
    return FormData.fromMap(formDataMap);
  }
}
