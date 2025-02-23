import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_payment_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/no_of_candidate_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/verify_payment_entity.dart';
import 'package:dartz/dartz.dart';

abstract class PaymentRepository {
  Future<Either<Failure, GetInvoiceEntity>> getInvoice();

  Future<Either<Failure, GetInvoiceEntity>> getInvoiceWithId(String identity);
   Future<Either<Failure, NoOfCandidateEntity>> noOfCandidate(String jobId);
  Future<Either<Failure, List<AllInvoiceEntity>>> getAllInvoice();
  Future<Either<Failure, List<AllPaymentEntity>>> getAllPayment();
  Future<Either<Failure, bool>> postInvoice(PostInvoiceEntity entity);
  Future<Either<Failure, bool>> transferPayment(
      TransferPaymentDetailsEntity entity);
  Future<Either<Failure, bool>> cardPayment(CardPaymentDetailsEntity entity);
  Future<Either<Failure, VerifyFlutterwavePaymentEntity>> verifyPayment(
      String transactionId);
}
