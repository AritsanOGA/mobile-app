import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';

class EmployerJobResponseModel extends EmployerJobResponseEntity {
  EmployerJobResponseModel({required super.id, required super.name});

  factory EmployerJobResponseModel.fromJson(Map<String, dynamic> json) =>
      EmployerJobResponseModel(
        id: json['id'] as int? ?? 0,
        name: json['name'] as String? ?? '',
      );
}
