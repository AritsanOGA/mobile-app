// import 'dart:convert';
// import 'dart:developer';
// import 'package:artisan_oga/features/payment/data/model/verify_payment_models.dart';
// import 'package:artisan_oga/shared/widgets/custom_toast.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutterwave_standard/core/flutterwave.dart';
// import 'package:flutterwave_standard/models/requests/customer.dart';
// import 'package:flutterwave_standard/models/requests/customizations.dart';
// import 'package:flutterwave_standard/models/responses/charge_response.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class FlutterWaveHelper {
//   String flutterwaveSecretTestKey =
//       'FLWSECK-341613b120c42ec413cc2af50b2f4bdc-1931bdf16cevt-X';
//   //'FLWSECK_TEST-940432bfbcd581506e354f8597ca89ab-X';
//   initializeTransaction(
//     BuildContext context, {
//     required String amount,
//     required Customer customer,

//     //required String publicKey
//   }) {
//     final Flutterwave flutterwave = Flutterwave(
//       context: context,
//       publicKey: 'FLWPUBK-8a749eecae39f5cfe0e78c341a68accb-X',
//       // "FLWSECK-8cad69a7459c34ef319d4b75effce64e-18fdb03b831vt-X",
//       //  "FLWPUBK-c2f064a39a4c22a710a741d3e440b7d1-X",
//       //publicKey,
//       //  'FLWPUBK_TEST-b5dcc3a435da54ff3cec69cbc98d487b-X',
//       currency: "NGN",
//       redirectUrl:
//           // "raffle.com",
//           'https://www.google.com',

//       txRef: "${DateTime.now().millisecondsSinceEpoch}",
//       amount: amount,
//       customer: customer,
//       paymentOptions: "card",
//       customization: Customization(title: "Regina Caeli"),
//       isTestMode: false,
//     );
//     print('txf ${"9ja_${DateTime.now().millisecondsSinceEpoch}"}');
//     return flutterwave;
//   }

//   Future<VerifyFlutterwavePaymentModel?> makePayment(
//     BuildContext walletContext, {
//     String? currency,
//     required String amount,
//     required Customer customer,
//   }) async {
//     final prefs = await SharedPreferences.getInstance();
//     String secretKey = prefs.getString('secretKey') ?? '';
//     String publicKey = prefs.getString('publicKey') ?? '';
//     String transactionId = prefs.getString('trxId') ?? '';
//     print('key$secretKey $publicKey $transactionId');
//     Flutterwave? flutterwaveInitData = await initializeTransaction(
//       walletContext,
//       amount: amount,
//       customer: customer,

//       //  publicKey: publicKey
//     );

//     if (flutterwaveInitData != null) {
//       try {
//         final ChargeResponse paymentResponse =
//             await flutterwaveInitData.charge();
//         if (paymentResponse.success == true) {
//           print(
//               'paymentResponse: ${paymentResponse.status}, ${paymentResponse.txRef} ${paymentResponse.transactionId}');

//           await prefs.setString('trxId', '${paymentResponse.transactionId}');
//           try {
//             var verifyFlutterwavePaymentResponse =
//                 await verifyFlutterwavePayment(
//                     paymentResponse.transactionId!, flutterwaveSecretTestKey
//                     //"FLWSECK-8cad69a7459c34ef319d4b75effce64e-18fdb03b831vt-X"
//                     //secretKey,
//                     );
//             if (verifyFlutterwavePaymentResponse['status'] == 'success') {
//               var dataBody = verifyFlutterwavePaymentResponse['data'];
//               VerifyFlutterwavePaymentModel verifyFlutterwaveData =
//                   verifyFlutterwavePaymentModelFromJson(
//                 jsonEncode(
//                   dataBody,
//                 ),
//               );
//               log(
//                 'verifyFlutterwaveModelFromJson: ${verifyFlutterwaveData.toJson()}',
//               );
//               //  Navigator.pop(walletContext);
//               //ToastUtils.showGreenToast('Your payment has been received');

//               return verifyFlutterwaveData;
//             } else {
//               String errorMessage =
//                   verifyFlutterwavePaymentResponse['message'] ??
//                       'Unknown error';
//               log('Error verifying transaction status: $errorMessage');
//               log('Error verifying transaction status');
//               ToastUtils.showRedToast(
//                 'Error verifying transaction status',
//               );

//               return null;
//             }
//           } catch (e) {
//             log('Error: $e');
//             return null;
//           }
//         } else {
//           print('${paymentResponse.success}');
//           String errorMessage = paymentResponse.status ?? 'Transaction failed';

//           ToastUtils.showRedToast(
//             'Error verifying transaction status',
//           );
//           return null;
//         }
//       } catch (e) {
//         log("Error making payment");
//         ToastUtils.showRedToast(
//           'Error making payment',
//         );
//         return null;
//       }
//     } else {
//       ToastUtils.showRedToast(
//         'Error initiating transaction',
//       );
//       return null;
//     }
//   }

//   Future verifyFlutterwavePayment(
//       String transactionId, String secretKey) async {
//     final Dio flutterwaveDio = Dio();
//     final flutterwaveVerifyUrl =
//         'https://api.flutterwave.com/v3/transactions/$transactionId/verify';
//     log('Verify Flutterwave Payment . . .$secretKey $flutterwaveSecretTestKey');
//     try {
//       Response response = await flutterwaveDio.get(
//         flutterwaveVerifyUrl,
//         options: Options(
//           headers: {
//             "Content-Type": "application/json",
//             'Authorization': 'Bearer $secretKey',
//           },
//           validateStatus: (_) => true,
//         ),
//       );

//       log("response.statusCode : ${response.statusCode}");
//       log('verifyFlutterwavePayment response.data >>>> ${response.data}');

//       if (response.statusCode == 200) {
//         return response.data;
//       } else {
//         return "error";
//       }
//     } catch (e) {
//       log("Error:-> $e");
//       return "error";
//     }
//   }
// }
