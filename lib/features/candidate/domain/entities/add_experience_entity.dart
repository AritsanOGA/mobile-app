import 'package:equatable/equatable.dart';

class AddExperienceEntity extends Equatable {
  const AddExperienceEntity({
    this.userId,
    this.companyName,
    this.role,
    this.igHandle,
    this.responsibilities,
    this.startYear,
    this.title,
    this.yearEnd,
    this.identity,
  });

  final String? userId;
  final String? companyName;
  final String? role;
  final String? title;
  final String? igHandle;
  final String? responsibilities;
  final String? startYear;
  final String? yearEnd;
  final String? identity;

  @override
  List<Object?> get props => [
        userId,
        companyName,
        role,
        title,
        responsibilities,
        startYear,
        yearEnd,
        identity
      ];
}
