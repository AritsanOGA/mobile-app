import 'package:equatable/equatable.dart';

class GetEmployerResponseEntity extends Equatable {
  final String? fullName;
  final dynamic about;
  final String? streetAddress;
  final String? city;
  final int? country;
  final String? companyName;
  final String? role;
  final dynamic businessName;
  final dynamic websiteAddress;
  final String? gender;
  final String? identity;

  const GetEmployerResponseEntity({
    this.fullName,
    this.about,
    this.streetAddress,
    this.city,
    this.country,
    this.companyName,
    this.role,
    this.businessName,
    this.websiteAddress,
    this.gender,
    this.identity,
  });

  @override
  List<Object?> get props => [
        fullName,
        about,
        streetAddress,
        city,
        country,
        companyName,
        role,
        businessName,
        websiteAddress,
        gender,
        identity,
      ];
}
