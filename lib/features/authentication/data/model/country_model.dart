import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';

class CountryResponseModel extends CountryResponseEntity {
  const CountryResponseModel({
    required super.id,
    required super.name,
  });

  factory CountryResponseModel.fromJson(Map<String, dynamic> json) {
    return CountryResponseModel(
      id: json['id'] as int ?? 0,
      name: json['name'] as String? ?? '',
    );
  }
}
