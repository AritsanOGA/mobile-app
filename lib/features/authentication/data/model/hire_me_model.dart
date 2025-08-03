import 'package:artisan_oga/features/authentication/domain/entities/hire_me_entity.dart';

class HireMeModel extends HireMeEntity {
  const HireMeModel({
    required super.candidateIdentity,
    required super.candidatePhone,
    required super.fullName,
    required super.employerPhone,
    required super.employerEmail,
  });

  factory HireMeModel.fromJson(Map<String, dynamic> json) {
    return HireMeModel(
      candidateIdentity: json['candidate_identity'],
      candidatePhone: json['candidate_phone'],
      fullName: json['full_name'],
      employerPhone: json['employer_phone'],
      employerEmail: json['employer_email'],
    );
  }
  factory HireMeModel.fromEntity(HireMeEntity entity) => HireMeModel(
      candidateIdentity: entity.candidateIdentity,
      candidatePhone: entity.candidatePhone,
      fullName: entity.fullName,
      employerEmail: entity.employerEmail,
      employerPhone: entity.employerPhone);
  Map<String, dynamic> toJson() {
    return {
      'candidate_identity': candidateIdentity,
      'candidate_phone': candidatePhone,
      'full_name': fullName,
      'employer_phone': employerPhone,
      'employer_email': employerEmail,
    };
  }
}
