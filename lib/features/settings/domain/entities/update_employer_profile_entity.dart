import 'package:equatable/equatable.dart';

class UpdateEmployerProfileEntity extends Equatable {
  final String userId;
  final String fullName;
  final String businessName;
  final String phoneNo;
  final String country;
  final String state;
  final String city;
  final String streetAddress;

  UpdateEmployerProfileEntity(
      {required this.userId,
      required this.fullName,
      required this.businessName,
      required this.phoneNo,
      required this.city,
      required this.country,
      required this.state,
      required this.streetAddress});

  @override
  List<Object?> get props => [
        userId,
        fullName,
        businessName,
        phoneNo,
        city,
        country,
        state,
        streetAddress
      ];
}
