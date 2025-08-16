import 'package:artisan_oga/features/candidate/domain/entities/update_awards_entity.dart';

class UpdateAwardModel extends UpdateAwardEntity {
  UpdateAwardModel({
    required super.identity,
    required super.title,
  });

  factory UpdateAwardModel.fromEntity(UpdateAwardEntity entity) =>
      UpdateAwardModel(
        identity: entity.identity,
        title: entity.title,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'identity': identity,
      };
}
