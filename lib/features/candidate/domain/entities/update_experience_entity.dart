import 'package:equatable/equatable.dart';

class UpdateExperienceEntity extends Equatable {
  const UpdateExperienceEntity(
      {this.role,
      this.description,
      this.startYear,
      this.title,
      this.identity,
      this.endYear});

  final String? role;
  final String? title;

  final String? description;
  final String? startYear;

  final String? identity;
  final String? endYear;

  @override
  List<Object?> get props =>
      [role, title, description, startYear, identity, endYear];
}
