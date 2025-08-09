import 'package:equatable/equatable.dart';

class AddEducationEntity extends Equatable {
  const AddEducationEntity({
    this.userId,
    this.title,
    this.courseName,
    this.description,
    this.year,
    this.identity,
  });

  final String? userId;
  final String? title;
  final String? courseName;
  final String? description;
  final String? year;
  final String? identity;

  @override
  List<Object?> get props => [
        userId,
        title,
        courseName,
        description,
        year,
        identity
      ];
}
