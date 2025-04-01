import 'package:equatable/equatable.dart';

class VerifyFlutterwavePaymentEntity extends Equatable {
  final int id;
  final String txRef;
  final String flwRef;
  final String deviceFingerprint;
  final double amount;
  final String currency;
  final double chargedAmount;
  final double appFee;
  final double merchantFee;
  final String processorResponse;
  final String authModel;
  final String ip;
  final String narration;
  final String status;
  final String paymentType;
  final DateTime createdAt;
  final int accountId;
  // final Card card;
  // final Meta meta;
  final double amountSettled;
  //final CustomerData customer;

  const VerifyFlutterwavePaymentEntity({
    required this.id,
    required this.txRef,
    required this.flwRef,
    required this.deviceFingerprint,
    required this.amount,
    required this.currency,
    required this.chargedAmount,
    required this.appFee,
    required this.merchantFee,
    required this.processorResponse,
    required this.authModel,
    required this.ip,
    required this.narration,
    required this.status,
    required this.paymentType,
    required this.createdAt,
    required this.accountId,
    // required this.card,
    // required this.meta,
    required this.amountSettled,
    // required this.customer,
  });

  @override
  List<Object> get props => [
        id,
        txRef,
        flwRef,
        deviceFingerprint,
        amount,
        currency,
        chargedAmount,
        appFee,
        merchantFee,
        processorResponse,
        authModel,
        ip,
        narration,
        status,
        paymentType,
        createdAt,
        accountId,
        // card,
        // meta,
        amountSettled,
     //   customer,
      ];
}

class Card extends Equatable {
  final String first6Digits;
  final String last4Digits;
  final String issuer;
  final String country;
  final String type;
  final String token;
  final String expiry;

  const Card({
    required this.first6Digits,
    required this.last4Digits,
    required this.issuer,
    required this.country,
    required this.type,
    required this.token,
    required this.expiry,
  });

  @override
  List<Object> get props =>
      [first6Digits, last4Digits, issuer, country, type, token, expiry];
}

class Meta extends Equatable {
  final String checkoutInitAddress;

  const Meta({required this.checkoutInitAddress});

  @override
  List<Object> get props => [checkoutInitAddress];
}

class CustomerData extends Equatable {
  final int id;
  final String name;
  final String phoneNumber;
  final String email;
  final DateTime createdAt;

  const CustomerData({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.createdAt,
  });

  @override
  List<Object> get props => [id, name, phoneNumber, email, createdAt];
}
