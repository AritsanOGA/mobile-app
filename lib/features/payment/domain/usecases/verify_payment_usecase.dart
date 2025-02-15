import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/payment/domain/entities/verify_payment_entity.dart';
import 'package:artisan_oga/features/payment/domain/repositories/payment_repository.dart';
import 'package:dartz/dartz.dart';

class VerifyPaymentUseCase
    implements UseCase<VerifyFlutterwavePaymentEntity, String> {
  VerifyPaymentUseCase(this.repository);
  final PaymentRepository repository;
  @override
  Future<Either<Failure, VerifyFlutterwavePaymentEntity>> call(
      String transactionId) {
    return repository.verifyPayment(transactionId);
  }
}
