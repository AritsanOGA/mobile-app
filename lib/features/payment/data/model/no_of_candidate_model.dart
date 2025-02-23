import 'package:artisan_oga/features/payment/domain/entities/all_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/no_of_candidate_entity.dart';

class NoOfCandidateModel extends NoOfCandidateEntity {
  const NoOfCandidateModel(
      {required super.candidate,
  });

  /// Convert from JSON to Model
  factory NoOfCandidateModel.fromJson(Map<String, dynamic> json) {
    return NoOfCandidateModel(
      candidate: json["no_of_candidate"],
   
    );
  }

  /// Convert from Entity to Model
  factory NoOfCandidateModel.fromEntity(NoOfCandidateEntity entity) {
    return NoOfCandidateModel(
        candidate: entity.candidate,
      );
  }

  /// Convert Model to JSON
  Map<String, dynamic> toJson() {
    return {
      "no_of_candidate": candidate,
      
    };
  }
}
