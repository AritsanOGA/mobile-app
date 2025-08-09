import 'package:equatable/equatable.dart';

class UpdateEducationEntity extends Equatable {
  const UpdateEducationEntity({
    required this.identity,
    required this.title,
    required this.courseName,
    required this.description,
    required this.year,
  });

  final String identity;
  final String title;
  final String courseName;
  final String description;
  final String year;

  @override
  List<Object?> get props => [
        identity,
        title,
        courseName,
        description,
        year,
      ];
}
