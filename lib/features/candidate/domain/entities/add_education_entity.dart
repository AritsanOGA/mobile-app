import 'package:equatable/equatable.dart';

class AddEducationEntity extends Equatable {
  const AddEducationEntity({
    this.userId,
    this.schoolName,
    this.courseName,
    this.degree,
    this.year,
    this.identity,
  });

  final String? userId;
  final String? schoolName;
  final String? courseName;
  final String? degree;
  final String? year;
  final String? identity;

  @override
  List<Object?> get props => [
        userId,
        schoolName,
        courseName,
        degree,
        year,
        identity
      ];
}
