import 'package:artisan_oga/features/candidate/domain/entities/upload_card_entity.dart';
import 'package:dio/dio.dart';

class UploadIDCardModel extends UploadIDCardEntity {
  UploadIDCardModel({
    required super.candidateIdentity,
    required super.card,
  });

  factory UploadIDCardModel.fromEntity(UploadIDCardEntity entity) =>
      UploadIDCardModel(
        candidateIdentity: entity.candidateIdentity,
        card: entity.card,
      );

  Future<FormData> toJson() async {
    final Map<String, dynamic> formDataMap = {
      'identity': candidateIdentity,
    };

    formDataMap['id_card'] = await MultipartFile.fromFile(
      "${card.path}",
      filename: "${card.path.split('/').last}",
    );

    return FormData.fromMap(formDataMap);
  }
}
