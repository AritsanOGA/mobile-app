import 'package:equatable/equatable.dart';

class GetExperienceEntity extends Equatable {
  const GetExperienceEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.purpose,
    required this.description,
    required this.startYear,
    required this.yearEnd,
  });
  final String id;
  final String userId;
  final String title;
  final String purpose;
  final String description;
  final String startYear;
  final String yearEnd;

  @override
  List<Object?> get props => [
        userId,
        title,
        purpose,
        description,
        startYear,
        yearEnd,
      ];
}
