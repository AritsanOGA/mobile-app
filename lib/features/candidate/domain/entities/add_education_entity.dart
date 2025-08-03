import 'package:equatable/equatable.dart';

class AddEducationEntity extends Equatable {
  const AddEducationEntity({
    required this.userId,
    required this.title,
    required this.courseName,
    required this.description,
    required this.year,
  });

  final String userId;
  final String title;
  final String courseName;
  final String description;
  final String year;

  @override
  List<Object?> get props => [
        userId,
        title,
        courseName,
        description,
        year,
      ];
}
