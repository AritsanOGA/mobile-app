import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/payment/domain/entities/transfer_payment_details_entity.dart';
import 'package:artisan_oga/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

accountDetailsDialg(
  BuildContext context,
  String identity,
  String total,
  String accountCurrency,
  String bank,
) {
  showDialog(
      context: context,
      builder: (
        context,
      ) {
        return BlocConsumer<PaymentBloc, PaymentState>(
          listener: (context, state) {
            if (state.transferPaymentState == TransferPaymentState.success) {
              Navigator.pushNamed(
                context,
                AppRoutes.invoiceSuccessScreen,
              );
              // ToastUtils.showRedToast(state.errorMessage ?? '');
            } else if (state.transferPaymentState ==
                TransferPaymentState.failure) {
              ToastUtils.showRedToast(state.errorMessage ?? '');
            }
          },
          builder: (context, state) {
            return AlertDialog(
                titlePadding: EdgeInsets.zero,
                actionsPadding: EdgeInsets.zero,
                contentPadding: EdgeInsets.zero,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                content: Container(
                  height: 240.h,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: accountCurrency == 'Naira Accounts'
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30.h,
                            ),
                            Center(
                              child: Text(
                                'Naira Accounts',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            bank == 'ZENITH BANK'
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Artisan Oga Ltd'),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        '1015255690',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        'ZENITH BANK',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Artisan Oga Ltd'),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        '1020641475',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        'UBA',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                      ),
                                    ],
                                  ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomElevatedButton(
                                text: 'Confirm',
                                isBusy: state.transferPaymentState ==
                                    TransferPaymentState.loading,
                                onPressed: () {
                                  context.read<PaymentBloc>().add(
                                      PaymentEvent.transferPayment(
                                          TransferPaymentDetailsEntity(
                                              identity: identity,
                                              amount: total,
                                              bank: bank)));
                                })
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Center(
                              child: Text(
                                'Dollar Accounts',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            bank == 'ACCESS Bank'
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Artisan Oga Ltd'),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        'ACCESS BANK',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        '1862512766',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                    ],
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Artisan Oga Ltd'),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        'Zenith Bank',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Text(
                                        '5080430125',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                      ),
                                    ],
                                  ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomElevatedButton(
                                text: 'Confirm',
                                isBusy: state.transferPaymentState ==
                                    TransferPaymentState.loading,
                                onPressed: () {
                                  context.read<PaymentBloc>().add(
                                      PaymentEvent.transferPayment(
                                          TransferPaymentDetailsEntity(
                                              identity: identity,
                                              amount: total,
                                              bank: bank)));
                                })
                          ],
                        ),
                ));
          },
        );
      });
}
