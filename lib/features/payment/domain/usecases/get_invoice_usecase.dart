
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/entities/all_job_response_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/repositories/payment_repository.dart';
import 'package:dartz/dartz.dart';

class GetInvoiceUsecase
    implements UseCase<GetInvoiceEntity, NoParams> {
  GetInvoiceUsecase(this.repository);
  final PaymentRepository repository;
  @override
  Future<Either<Failure, GetInvoiceEntity>> call(NoParams params) {
    return repository.getInvoice();
  }
}