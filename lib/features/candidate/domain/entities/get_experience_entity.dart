import 'package:equatable/equatable.dart';

class GetExperienceEntity extends Equatable {
  const GetExperienceEntity({
    this.id,
    this.userId,
    this.title,
    this.purpose,
    this.description,
    this.startYear,
    this.yearEnd,
    this.identity,
  });
  final int? id;
  final String? userId;
  final String? title;
  final String? purpose;
  final String? description;
  final int? startYear;
  final String? yearEnd;
  final String? identity;

  @override
  List<Object?> get props => [
        userId,
        title,
        purpose,
        description,
        startYear,
        yearEnd,
        identity,
      ];
}
