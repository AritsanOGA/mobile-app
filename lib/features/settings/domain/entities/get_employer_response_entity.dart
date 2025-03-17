import 'package:equatable/equatable.dart';

class GetEmployerResponseEntity extends Equatable {
  final String? fullName;
  final dynamic about;
  final String? phoneNo;
  final String? streetAddress;
  final String? address;
  final String? city;
  final int? country;
  final String? companyName;
  final String? role;
  final dynamic businessName;
  final dynamic websiteAddress;
  final dynamic image;
  final String? gender;
  final String? identity;

  const GetEmployerResponseEntity({
    this.fullName,
    this.about,
    this.phoneNo,
    this.address,
    this.streetAddress,
    this.city,
    this.country,
    this.companyName,
    this.role,
    this.businessName,
    this.websiteAddress,
    this.image,
    this.gender,
    this.identity,
  });

  @override
  List<Object?> get props => [
        fullName,
        about,
        phoneNo,
        address,
        streetAddress,
        city,
        country,
        companyName,
        role,
        businessName,
        websiteAddress,
        image,
        gender,
        identity,
      ];
}
