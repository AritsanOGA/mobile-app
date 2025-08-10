import 'package:equatable/equatable.dart';

class GetAwardEntity extends Equatable {
  const GetAwardEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.purpose,
    required this.description,
    required this.year,
    required this.identity,
  });
  final int id;
  final String userId;
  final String title;
  final String purpose;
  final String description;
  final String year;
  final String identity;

  @override
  List<Object?> get props => [
        id,
        userId,
        title,
        purpose,
        description,
        year,
        identity
      ];
}
