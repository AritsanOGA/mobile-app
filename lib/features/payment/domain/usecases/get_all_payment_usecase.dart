import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_payment_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/repositories/payment_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllPaymentUsecase implements UseCase<List<AllPaymentEntity>, NoParams> {
  GetAllPaymentUsecase(this.repository);
  final PaymentRepository repository;
  @override
  Future<Either<Failure,List<AllPaymentEntity> >> call(NoParams params) {
    return repository.getAllPayment();
  }
}
