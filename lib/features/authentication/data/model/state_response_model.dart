import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';

class StateResponseModel extends StateResponseEntity {
  const StateResponseModel({
    super.id,
    super.name,
  });

  factory StateResponseModel.fromJson(Map<String, dynamic> json) {
    return StateResponseModel(
      id: json['id'] as int ,
      name: json['name'] as String? ?? '',
    );
  }
}
