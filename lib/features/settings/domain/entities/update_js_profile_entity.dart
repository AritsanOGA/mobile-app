import 'package:equatable/equatable.dart';

class UpdateJobSeekerProfileEntity extends Equatable {
  final int userId;
  final String fullName;
  final String businessName;
  final String phoneNo;
  final String country;
  final int state;
  final String city;

  UpdateJobSeekerProfileEntity(
      {required this.userId,
      required this.fullName,
      required this.businessName,
      required this.phoneNo,
      required this.city,
      required this.country,
      required this.state});

  @override
  List<Object?> get props =>
      [userId, fullName, businessName, phoneNo, city, country, state];
}
