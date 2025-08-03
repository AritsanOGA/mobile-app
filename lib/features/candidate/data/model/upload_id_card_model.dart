import 'package:artisan_oga/features/candidate/domain/entities/upload_card_entity.dart';

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

  Map<String, dynamic> toJson() => {
        'identity': candidateIdentity,
        'id_card': card,
      };
}
