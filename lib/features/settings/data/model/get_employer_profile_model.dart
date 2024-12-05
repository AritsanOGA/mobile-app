import 'package:artisan_oga/features/settings/domain/entities/get_employer_response_entity.dart';

class GetEmployerResponseModel extends GetEmployerResponseEntity {
  GetEmployerResponseModel({
    super.fullName,
    super.about,
    super.streetAddress,
    super.city,
    super.country,
    super.companyName,
    super.role,
    super.businessName,
    super.websiteAddress,
    super.gender,
  });

  factory GetEmployerResponseModel.fromJson(Map<String, dynamic> json) =>
      GetEmployerResponseModel(
        fullName: json["full_name"] ?? '',
        about: json["about"] ?? '',
        streetAddress: json["street_address"] ?? '',
        city: json["city"] ?? '',
        country: json["country"] ?? 0,
        companyName: json["company_name"] ?? '',
        role: json["role"] ?? '',
        businessName: json["business_name"] ?? '',
        websiteAddress: json["website_address"] ?? '',
        gender: json["gender"] ?? '',
      );
}
