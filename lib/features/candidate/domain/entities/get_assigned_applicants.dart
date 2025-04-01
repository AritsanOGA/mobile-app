import 'package:equatable/equatable.dart';

class GetAssignedApplicantsEntity extends Equatable {
  final int id;
  final int userId;
  final String identity;
  final int jobId;
  final int employerId;
  final String status;
  final int approved;
  final DateTime createdAt;
  final DateTime updatedAt;
  final UserEntity users;

  const GetAssignedApplicantsEntity({
    required this.id,
    required this.userId,
    required this.identity,
    required this.jobId,
    required this.employerId,
    required this.status,
    required this.approved,
    required this.createdAt,
    required this.updatedAt,
    required this.users,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        identity,
        jobId,
        employerId,
        status,
        approved,
        createdAt,
        updatedAt,
        users,
      ];
}

class UserEntity extends Equatable {
  final int id;
  final String fullName;
  final String availability;
  final String phone;
  final String workExperience;
  final String identity;

  const UserEntity({
    required this.id,
    required this.fullName,
    required this.availability,
    required this.phone,
    required this.workExperience,
    required this.identity,
  });

  @override
  List<Object?> get props => [
        id,
        fullName,
        availability,
        phone,
        workExperience,
        identity,
      ];
}
