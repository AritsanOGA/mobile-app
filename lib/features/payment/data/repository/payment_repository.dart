import 'package:artisan_oga/core/app_constants/app_strings.dart';
import 'package:artisan_oga/core/error/exceptions.dart';
import 'package:artisan_oga/core/error/failure.dart';
import 'package:artisan_oga/core/extensions/extension.dart';
import 'package:artisan_oga/features/payment/data/data_source/payment_remote_data_source.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/all_payment_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/card_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/get_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/domain/entities/verify_payment_entity.dart';
import 'package:artisan_oga/features/payment/domain/repositories/payment_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource paymentRemoteDataSource;

  PaymentRepositoryImpl({required this.paymentRemoteDataSource});
  @override
  Future<Either<Failure, bool>> cardPayment(
      CardPaymentDetailsEntity entity) async {
    try {
      final result = await paymentRemoteDataSource.cardPayment(entity);
      // await localDataSource.cacheUser(result);
      // UserService().authData = result;
      return const Right(true);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on CachedException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      debugPrint(e.toString());
      return const Left(
        ServerFailure(
          message: AppStrings.genericErrorMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, GetInvoiceEntity>> getInvoice(String identity) async {
    return paymentRemoteDataSource.getInvoice(identity).makeRequest();
  }

  @override
  Future<Either<Failure, bool>> postInvoice(PostInvoiceEntity entity) async {
    try {
      final result = await paymentRemoteDataSource.postInvoice(entity);
      // await localDataSource.cacheUser(result);
      // UserService().authData = result;
      return const Right(true);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on CachedException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      debugPrint(e.toString());
      return const Left(
        ServerFailure(
          message: AppStrings.genericErrorMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> transferPayment(
      TransferPaymentDetailsEntity entity) async {
    try {
      final result = await paymentRemoteDataSource.transferPayment(entity);
      // await localDataSource.cacheUser(result);
      // UserService().authData = result;
      return const Right(true);
    } on ServerException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on CachedException catch (e) {
      return Left(ServerFailure(message: e.message));
    } catch (e) {
      debugPrint(e.toString());
      return const Left(
        ServerFailure(
          message: AppStrings.genericErrorMessage,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, VerifyFlutterwavePaymentEntity>> verifyPayment(String transactionId) {
   return paymentRemoteDataSource.verifyPayment(transactionId).makeRequest();
  }

  @override
  Future<Either<Failure, List<AllInvoiceEntity>>> getAllInvoice() {
     return paymentRemoteDataSource.getAllInvoice().makeRequest();

  }

  @override
  Future<Either<Failure, List<AllPaymentEntity>>> getAllPayment() {
       return paymentRemoteDataSource.getAllPayment().makeRequest();

  }
}
