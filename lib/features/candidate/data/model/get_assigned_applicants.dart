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

  factory GetAssignedApplicantsModel.fromJson(Map<String, dynamic> json) =>
      GetAssignedApplicantsModel(
        id: json["id"],
        userId: json["user_id"],
        identity: json["identity"],
        jobId: json["job_id"],
        employerId: json["employer_id"],
        status: json["status"],
        approved: json["approved"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        users: UserModel.fromJson(json["users"]),
      );
}

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.fullName,
    required super.availability,
    required super.phone,
    required super.workExperience,
    required super.identity,
    required super.image,
  });

  factory UserModel.fromEntity(UserEntity entity) => UserModel(
      id: entity.id,
      fullName: entity.fullName,
      availability: entity.availability,
      phone: entity.phone,
      workExperience: entity.workExperience,
      identity: entity.identity,
      image: entity.image);
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json["id"],
      fullName: json["full_name"],
      availability: json["availability"],
      phone: json["phone"],
      workExperience: json["work_experience"],
      identity: json["identity"],
      image: json["profile_image"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "availability": availability,
        "phone": phone,
        "work_experience": workExperience,
        "identity": identity,
        "profile_image": image
      };
}
