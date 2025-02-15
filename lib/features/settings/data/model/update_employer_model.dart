import 'package:artisan_oga/features/settings/domain/entities/update_employer_profile_entity.dart';

class UpdateEmployerProfileModel extends UpdateEmployerProfileEntity {
  UpdateEmployerProfileModel(
      {required super.userId,
      required super.fullName,
      required super.businessName,
      required super.phoneNo,
      required super.city,
      required super.country,
      required super.state,
      required super.streetAddress});

  factory UpdateEmployerProfileModel.fromEntity(
          UpdateEmployerProfileEntity entity) =>
      UpdateEmployerProfileModel(
          userId: entity.userId,
          fullName: entity.fullName,
          businessName: entity.businessName,
          phoneNo: entity.phoneNo,
          city: entity.city,
          country: entity.country,
          state: entity.state,
          streetAddress: entity.streetAddress);

  Map<String, dynamic> toJson() => {
        'identity': userId,
        "full_name": fullName,
        "business_name": businessName,
        "street_address": streetAddress,
        "city": city,
        "state": state,
        "phone": phoneNo,
        "country": country
      };
}
