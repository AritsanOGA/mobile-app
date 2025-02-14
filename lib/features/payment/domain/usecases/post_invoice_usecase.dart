import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/utils/usecase.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/repositories/payment_repository.dart';
import 'package:dartz/dartz.dart';

class PostInvoiceUseCase implements UseCase<bool, PostInvoiceEntity> {
  PostInvoiceUseCase(this.repository);
  final PaymentRepository repository;
  @override
  Future<Either<Failure, bool>> call(PostInvoiceEntity params) {
    return repository.postInvoice(params);
  }
}
