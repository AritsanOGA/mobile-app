import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/payment/domain/entities/no_of_candidate_entity.dart';
import 'package:artisan_oga/features/payment/domain/repositories/payment_repository.dart';
import 'package:dartz/dartz.dart';

class NoOfCandidateUseCase implements UseCase<NoOfCandidateEntity, String> {
  NoOfCandidateUseCase(this.repository);
  final PaymentRepository repository;
  @override
  Future<Either<Failure, NoOfCandidateEntity>> call(String jobId) {
    return repository.noOfCandidate(jobId);
  }
}
