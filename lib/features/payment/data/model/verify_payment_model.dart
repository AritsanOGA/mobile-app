import 'package:artisan_oga/features/payment/domain/entities/verify_payment_entity.dart';

class VerifyFlutterwavePaymentModel extends VerifyFlutterwavePaymentEntity {
  const VerifyFlutterwavePaymentModel({
    required super.id,
    required super.txRef,
    required super.flwRef,
    required super.deviceFingerprint,
    required super.amount,
    required super.currency,
    required super.chargedAmount,
    required super.appFee,
    required super.merchantFee,
    required super.processorResponse,
    required super.authModel,
    required super.ip,
    required super.narration,
    required super.status,
    required super.paymentType,
    required super.createdAt,
    required super.accountId,
    // required super.card,
    // required super.meta,
    required super.amountSettled,
  //  required super.customer,
  });

  /// Convert from entity to model
  factory VerifyFlutterwavePaymentModel.fromEntity(
          VerifyFlutterwavePaymentEntity entity) =>
      VerifyFlutterwavePaymentModel(
        id: entity.id,
        txRef: entity.txRef,
        flwRef: entity.flwRef,
        deviceFingerprint: entity.deviceFingerprint,
        amount: entity.amount,
        currency: entity.currency,
        chargedAmount: entity.chargedAmount,
        appFee: entity.appFee,
        merchantFee: entity.merchantFee,
        processorResponse: entity.processorResponse,
        authModel: entity.authModel,
        ip: entity.ip,
        narration: entity.narration,
        status: entity.status,
        paymentType: entity.paymentType,
        createdAt: entity.createdAt,
        accountId: entity.accountId,
        // card: entity.card,
        // meta: entity.meta,
        amountSettled: entity.amountSettled,
       // customer: entity.customer,
      );

  /// Convert from JSON to model
  factory VerifyFlutterwavePaymentModel.fromJson(Map<String, dynamic> json) =>
      VerifyFlutterwavePaymentModel(
        id: json["id"] ?? 0,
        txRef: json["tx_ref"],
        flwRef: json["flw_ref"],
        deviceFingerprint: json["device_fingerprint"],
        amount: json["amount"].toDouble(),
        currency: json["currency"],
        chargedAmount: json["charged_amount"].toDouble(),
        appFee: json["app_fee"].toDouble(),
        merchantFee: json["merchant_fee"].toDouble(),
        processorResponse: json["processor_response"],
        authModel: json["auth_model"],
        ip: json["ip"],
        narration: json["narration"],
        status: json["status"],
        paymentType: json["payment_type"],
        createdAt: DateTime.parse(json["created_at"]),
        accountId: json["account_id"],
        // card: CardModel.fromJson(json["card"]),
        // meta: MetaModel.fromJson(json["meta"]),
        amountSettled: json["amount_settled"].toDouble(),
       // customer: CustomerDataModel.fromJson(json["customer"]),
      );

  /// Convert model to JSON
  Map<String, dynamic> toJson() => {
        "id": id,
        "tx_ref": txRef,
        "flw_ref": flwRef,
        "device_fingerprint": deviceFingerprint,
        "amount": amount,
        "currency": currency,
        "charged_amount": chargedAmount,
        "app_fee": appFee,
        "merchant_fee": merchantFee,
        "processor_response": processorResponse,
        "auth_model": authModel,
        "ip": ip,
        "narration": narration,
        "status": status,
        "payment_type": paymentType,
        "created_at": createdAt.toIso8601String(),
        "account_id": accountId,
        // "card": card.toJson(),
        // "meta": meta.toJson(),
        "amount_settled": amountSettled,
        // "customer": customer.toJson(),
      };
}

class CardModel extends Card {
  const CardModel({
    required super.first6Digits,
    required super.last4Digits,
    required super.issuer,
    required super.country,
    required super.type,
    required super.token,
    required super.expiry,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) => CardModel(
        first6Digits: json["first_6digits"],
        last4Digits: json["last_4digits"],
        issuer: json["issuer"],
        country: json["country"],
        type: json["type"],
        token: json["token"],
        expiry: json["expiry"],
      );

  Map<String, dynamic> toJson() => {
        "first_6digits": first6Digits,
        "last_4digits": last4Digits,
        "issuer": issuer,
        "country": country,
        "type": type,
        "token": token,
        "expiry": expiry,
      };
}

class MetaModel extends Meta {
  const MetaModel({
    required super.checkoutInitAddress,
  });

  factory MetaModel.fromJson(Map<String, dynamic> json) => MetaModel(
        checkoutInitAddress: json["__CheckoutInitAddress"],
      );

  Map<String, dynamic> toJson() => {
        "__CheckoutInitAddress": checkoutInitAddress,
      };
}

class CustomerDataModel extends CustomerData {
  const CustomerDataModel({
    required super.id,
    required super.name,
    required super.phoneNumber,
    required super.email,
    required super.createdAt,
  });

  factory CustomerDataModel.fromJson(Map<String, dynamic> json) =>
      CustomerDataModel(
        id: json["id"],
        name: json["name"],
        phoneNumber: json["phone_number"],
        email: json["email"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone_number": phoneNumber,
        "email": email,
        "created_at": createdAt.toIso8601String(),
      };
}
