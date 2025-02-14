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
                AppRoutes.invoicePage1,
              );
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
                  height: 320.h,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: accountCurrency == 'Naira Accounts'
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.h,
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
                            Text('Artisan Oga Ltd'),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              '1234567891',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              'ABC Bank',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text('Artisan Oga Ltd'),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              '1234567891',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              'ABC Bank',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomElevatedButton(
                                text: 'Submit',
                                isBusy: state.postInvoiceState ==
                                    PostInvoiceState.loading,
                                onPressed: () {
                                  print(
                                      "Paid: ${state.amount} | Balance: ${state.balance} ${state.payingAll}");

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
                              height: 10.h,
                            ),
                            Text('Artisan Oga Ltd'),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              'ACCESS Bank',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              '2736354673846',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text('Artisan Oga Ltd'),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              'ACCESS Bank',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              '2736354673846',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            CustomElevatedButton(
                                text: 'Submit',
                                isBusy: state.postInvoiceState ==
                                    PostInvoiceState.loading,
                                onPressed: () {
                                  print(
                                      "Paid: ${state.amount} | Balance: ${state.balance} ${state.payingAll}");

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
