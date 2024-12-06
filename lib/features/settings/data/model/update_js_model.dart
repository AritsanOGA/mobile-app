import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';

class UpdateJobSeekerProfileModel extends UpdateJobSeekerProfileEntity {
  UpdateJobSeekerProfileModel(
      {required super.userId,
      required super.fullName,
      required super.businessName,
      required super.phoneNo,
      required super.city,
      required super.country,
      required super.state});

  factory UpdateJobSeekerProfileModel.fromEntity(
          UpdateJobSeekerProfileEntity entity) =>
      UpdateJobSeekerProfileModel(
          userId: entity.userId,
          fullName: entity.fullName,
          businessName: entity.businessName,
          phoneNo: entity.phoneNo,
          city: entity.city,
          country: entity.country,
          state: entity.state);

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        "full_name": fullName,
        "business_name": businessName,
        "city": city,
        "state": state,
        "phone": phoneNo,
        "country": country
      };
}
