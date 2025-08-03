import 'package:equatable/equatable.dart';

class AddExperienceEntity extends Equatable {
  const AddExperienceEntity({
    required this.userId,
    required this.title,
    required this.role,
    required this.serviceDescription,
    required this.startYear,
    required this.yearEnd,
  });

  final String userId;
  final String title;
  final String role;
  final String serviceDescription;
  final String startYear;
  final String yearEnd;

  @override
  List<Object?> get props => [
        userId,
        title,
        role,
        serviceDescription,
        startYear,
        yearEnd,
      ];
}
