import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/repositories/payment_repository.dart';
import 'package:dartz/dartz.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  @override
  Future<Either<Failure, bool>> cardPayment(CardPaymentDetailsEntity entity) {
    // TODO: implement cardPayment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GetInvoiceEntity>> getInvoice() {
    // TODO: implement getInvoice
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> postInvoice(PostInvoiceEntity entity) {
    // TODO: implement postInvoice
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> transferPayment(TransferPaymentDetailsEntity entity) {
    // TODO: implement transferPayment
    throw UnimplementedError();
  }


}