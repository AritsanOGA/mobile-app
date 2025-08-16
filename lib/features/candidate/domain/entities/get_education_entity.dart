import 'package:equatable/equatable.dart';

class GetEducationEntity extends Equatable {
  const GetEducationEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.purpose,
    required this.degree,
    required this.year,
    required this.identity,
  });
  final int id;
  final String userId;
  final String title;
  final String degree;
  final String purpose;
  final String year;
  final String identity;

  @override
  List<Object?> get props =>
      [id, userId, title, purpose, year, identity, degree];
}
