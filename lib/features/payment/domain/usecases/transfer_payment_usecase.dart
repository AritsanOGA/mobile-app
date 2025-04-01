
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/repositories/payment_repository.dart';
import 'package:dartz/dartz.dart';

class TransferPaymentUseCase implements UseCase<bool, TransferPaymentDetailsEntity> {
  TransferPaymentUseCase(this.repository);
  final PaymentRepository repository;
  @override
  Future<Either<Failure, bool>> call(TransferPaymentDetailsEntity params) {
    return repository.transferPayment(params);
  }
}
