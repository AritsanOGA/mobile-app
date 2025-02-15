// import 'dart:convert';

// VerifyFlutterwavePaymentModel verifyFlutterwavePaymentModelFromJson(
//         String str) =>
//     VerifyFlutterwavePaymentModel.fromJson(json.decode(str));

// String verifyFlutterwavePaymentModelToJson(
//         VerifyFlutterwavePaymentModel data) =>
//     json.encode(data.toJson());

// class VerifyFlutterwavePaymentModel {
//   final int? id;
//   final String? txRef;
//   final String? flwRef;
//   final String? deviceFingerprint;
//   final double? amount;
//   final String? currency;
//   final double? chargedAmount;
//   final double? appFee;
//   final double? merchantFee;
//   final String? processorResponse;
//   final String? authModel;
//   final String? ip;
//   final String? narration;
//   final String? status;
//   final String? paymentType;
//   final DateTime? createdAt;
//   final int? accountId;
//   final Card? card;
//   final Meta? meta;
//   final double? amountSettled;
//   final CustomerData? customer;

//   VerifyFlutterwavePaymentModel({
//     this.id,
//     this.txRef,
//     this.flwRef,
//     this.deviceFingerprint,
//     this.amount,
//     this.currency,
//     this.chargedAmount,
//     this.appFee,
//     this.merchantFee,
//     this.processorResponse,
//     this.authModel,
//     this.ip,
//     this.narration,
//     this.status,
//     this.paymentType,
//     this.createdAt,
//     this.accountId,
//     this.card,
//     this.meta,
//     this.amountSettled,
//     this.customer,
//   });

//   VerifyFlutterwavePaymentModel copyWith({
//     int? id,
//     String? txRef,
//     String? flwRef,
//     String? deviceFingerprint,
//     double? amount,
//     String? currency,
//     double? chargedAmount,
//     double? appFee,
//     double? merchantFee,
//     String? processorResponse,
//     String? authModel,
//     String? ip,
//     String? narration,
//     String? status,
//     String? paymentType,
//     DateTime? createdAt,
//     int? accountId,
//     Card? card,
//     Meta? meta,
//     double? amountSettled,
//     CustomerData? customer,
//   }) =>
//       VerifyFlutterwavePaymentModel(
//         id: id ?? this.id,
//         txRef: txRef ?? this.txRef,
//         flwRef: flwRef ?? this.flwRef,
//         deviceFingerprint: deviceFingerprint ?? this.deviceFingerprint,
//         amount: amount ?? this.amount,
//         currency: currency ?? this.currency,
//         chargedAmount: chargedAmount ?? this.chargedAmount,
//         appFee: appFee ?? this.appFee,
//         merchantFee: merchantFee ?? this.merchantFee,
//         processorResponse: processorResponse ?? this.processorResponse,
//         authModel: authModel ?? this.authModel,
//         ip: ip ?? this.ip,
//         narration: narration ?? this.narration,
//         status: status ?? this.status,
//         paymentType: paymentType ?? this.paymentType,
//         createdAt: createdAt ?? this.createdAt,
//         accountId: accountId ?? this.accountId,
//         card: card ?? this.card,
//         meta: meta ?? this.meta,
//         amountSettled: amountSettled ?? this.amountSettled,
//         customer: customer ?? this.customer,
//       );

//   factory VerifyFlutterwavePaymentModel.fromJson(Map<String, dynamic> json) =>
//       VerifyFlutterwavePaymentModel(
//         id: json["id"],
//         txRef: json["tx_ref"],
//         flwRef: json["flw_ref"],
//         deviceFingerprint: json["device_fingerprint"],
//         amount: json["amount"]?.toDouble(),
//         currency: json["currency"],
//         chargedAmount: json["charged_amount"]?.toDouble(),
//         appFee: json["app_fee"]?.toDouble(),
//         merchantFee: json["merchant_fee"]?.toDouble(),
//         processorResponse: json["processor_response"],
//         authModel: json["auth_model"],
//         ip: json["ip"],
//         narration: json["narration"],
//         status: json["status"],
//         paymentType: json["payment_type"],
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//         accountId: json["account_id"],
//         card: json["card"] == null ? null : Card.fromJson(json["card"]),
//         meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
//         amountSettled: json["amount_settled"]?.toDouble(),
//         customer: json["customer"] == null
//             ? null
//             : CustomerData.fromJson(json["customer"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "tx_ref": txRef,
//         "flw_ref": flwRef,
//         "device_fingerprint": deviceFingerprint,
//         "amount": amount,
//         "currency": currency,
//         "charged_amount": chargedAmount,
//         "app_fee": appFee,
//         "merchant_fee": merchantFee,
//         "processor_response": processorResponse,
//         "auth_model": authModel,
//         "ip": ip,
//         "narration": narration,
//         "status": status,
//         "payment_type": paymentType,
//         "created_at": createdAt?.toIso8601String(),
//         "account_id": accountId,
//         "card": card?.toJson(),
//         "meta": meta?.toJson(),
//         "amount_settled": amountSettled,
//         "customer": customer?.toJson(),
//       };
// }

// class Card {
//   final String? first6Digits;
//   final String? last4Digits;
//   final String? issuer;
//   final String? country;
//   final String? type;
//   final String? token;
//   final String? expiry;

//   Card({
//     this.first6Digits,
//     this.last4Digits,
//     this.issuer,
//     this.country,
//     this.type,
//     this.token,
//     this.expiry,
//   });

//   Card copyWith({
//     String? first6Digits,
//     String? last4Digits,
//     String? issuer,
//     String? country,
//     String? type,
//     String? token,
//     String? expiry,
//   }) =>
//       Card(
//         first6Digits: first6Digits ?? this.first6Digits,
//         last4Digits: last4Digits ?? this.last4Digits,
//         issuer: issuer ?? this.issuer,
//         country: country ?? this.country,
//         type: type ?? this.type,
//         token: token ?? this.token,
//         expiry: expiry ?? this.expiry,
//       );

//   factory Card.fromJson(Map<String, dynamic> json) => Card(
//         first6Digits: json["first_6digits"],
//         last4Digits: json["last_4digits"],
//         issuer: json["issuer"],
//         country: json["country"],
//         type: json["type"],
//         token: json["token"],
//         expiry: json["expiry"],
//       );

//   Map<String, dynamic> toJson() => {
//         "first_6digits": first6Digits,
//         "last_4digits": last4Digits,
//         "issuer": issuer,
//         "country": country,
//         "type": type,
//         "token": token,
//         "expiry": expiry,
//       };
// }

// class Meta {
//   final String? checkoutInitAddress;

//   Meta({
//     this.checkoutInitAddress,
//   });

//   Meta copyWith({
//     String? checkoutInitAddress,
//   }) =>
//       Meta(
//         checkoutInitAddress: checkoutInitAddress ?? this.checkoutInitAddress,
//       );

//   factory Meta.fromJson(Map<String, dynamic> json) => Meta(
//         checkoutInitAddress: json["__CheckoutInitAddress"],
//       );

//   Map<String, dynamic> toJson() => {
//         "__CheckoutInitAddress": checkoutInitAddress,
//       };
// }

// class CustomerData {
//   final int? id;
//   final String? name;
//   final String? phoneNumber;
//   final String? email;
//   final DateTime? createdAt;

//   CustomerData({
//     this.id,
//     this.name,
//     this.phoneNumber,
//     this.email,
//     this.createdAt,
//   });

//   CustomerData copyWith({
//     int? id,
//     String? name,
//     String? phoneNumber,
//     String? email,
//     DateTime? createdAt,
//   }) =>
//       CustomerData(
//         id: id ?? this.id,
//         name: name ?? this.name,
//         phoneNumber: phoneNumber ?? this.phoneNumber,
//         email: email ?? this.email,
//         createdAt: createdAt ?? this.createdAt,
//       );

//   factory CustomerData.fromJson(Map<String, dynamic> json) => CustomerData(
//         id: json["id"],
//         name: json["name"],
//         phoneNumber: json["phone_number"],
//         email: json["email"],
//         createdAt: json["created_at"] == null
//             ? null
//             : DateTime.parse(json["created_at"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "phone_number": phoneNumber,
//         "email": email,
//         "created_at": createdAt?.toIso8601String(),
//       };
// }