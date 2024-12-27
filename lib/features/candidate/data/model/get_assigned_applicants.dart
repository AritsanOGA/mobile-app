import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';

class GetAssignedApplicantsModel extends GetAssignedApplicantsEntity {
  GetAssignedApplicantsModel({
    required super.id,
    required super.userId,
    required super.identity,
    required super.jobId,
    required super.employerId,
    required super.status,
    required super.approved,
    required super.createdAt,
    required super.updatedAt,
    required super.users,
  });

  factory GetAssignedApplicantsModel.fromEntity(
          GetAssignedApplicantsEntity entity) =>
      GetAssignedApplicantsModel(
        id: entity.id,
        userId: entity.userId,
        identity: entity.identity,
        jobId: entity.jobId,
        employerId: entity.employerId,
        status: entity.status,
        approved: entity.approved,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
        users: entity.users,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "identity": identity,
        "job_id": jobId,
        "employer_id": employerId,
        "status": status,
        "approved": approved,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "users": users,
      };
}

class UserModel extends UserEntity {
  // final int? id;
  // final String? fullName;
  // final String? availability;
  // final String? phone;
  // final String? workExperience;
  // final String? identity;

  UserModel({
    required super.id,
    required super.fullName,
    required super.availability,
    required super.phone,
    required super.workExperience,
    required super.identity,
  });

  factory UserModel.fromJson(UserEntity entity) => UserModel(
        id: entity.id,
        fullName: entity.fullName,
        availability: entity.availability,
        phone: entity.phone,
        workExperience: entity.workExperience,
        identity: entity.identity,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "availability": availability,
        "phone": phone,
        "work_experience": workExperience,
        "identity": identity,
      };
}
