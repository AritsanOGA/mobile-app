import 'package:equatable/equatable.dart';

class GetEducationEntity extends Equatable {
  const GetEducationEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.purpose,
    required this.description,
    required this.year,
  });
  final String id;
  final String userId;
  final String title;
  final String purpose;
  final String description;
  final String year;

  @override
  List<Object?> get props => [
        id,
        userId,
        title,
        purpose,
        description,
        year,
      ];
}
