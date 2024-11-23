import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';

class StateResponseModel extends StateResponseEntity {
  const StateResponseModel({
    required super.id,
    required super.name,
  });

  factory StateResponseModel.fromJson(Map<String, dynamic> json) {
    return StateResponseModel(
      id: json['id'] as int ?? 0,
      name: json['name'] as String? ?? '',
    );
  }
}
