import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/theme/custom_text_style.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          title: 'Invoice',
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.v),
              Center(
                child: Text("Kindly Create an Invoice to Initiate Payment",
                    style: theme.textTheme.bodyMedium),
              ),
              SizedBox(height: 20.v),
              BlocBuilder<PaymentBloc, PaymentState>(
                bloc: context.read<PaymentBloc>()
                  ..add(PaymentEvent.getInvoice(
                      '30621730130358561730130358244957')),
                builder: (context, state) {
                  if (state.getInvoiceState == GetInvoiceState.loading) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (state.getInvoiceState == GetJobSeekerJobState.failure) {
                    return Center(child: Text('Error: '));
                  }

                  return Column(
                    children: [
                      Container(
                        height: 500.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: theme.primaryColor, width: 2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              height: 20.h,
                              color: theme.primaryColor,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('23 Jan, 2025'),
                                  Text('23 Jan, 2025')
                                ],
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Invoice No',
                                  style: theme.textTheme.bodyMedium),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('324516',
                                  style: theme.textTheme.bodyMedium),
                            ),
                            Center(child: Text('Invoice')),
                            SizedBox(height: 10.v),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Billed to:',
                                      style: theme.textTheme.bodyMedium),
                                  Text('Status',
                                      style: theme.textTheme.bodyMedium)
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          '${state.getInvoice?.users.fullName}',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18)),
                                      Text('${state.getInvoice?.users.email}',
                                          style: theme.textTheme.bodyMedium)
                                    ],
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 70.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.red),
                                    child: Center(
                                        child: Text('Unpaid',
                                            style: theme.textTheme.bodyMedium)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('09012345678',
                                  style: theme.textTheme.bodyMedium),
                            ),
                            SizedBox(height: 10.v),
                            Container(
                                width: double.infinity,
                                height: 30.h,
                                color: Colors.grey,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Center(child: Text('Description')),
                                )),
                            SizedBox(height: 20.v),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Initial Payment (75%)',
                                      style: theme.textTheme.bodyMedium),
                                  Text('N 75,000.00',
                                      style: theme.textTheme.bodyMedium),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Balance',
                                      style: theme.textTheme.bodyMedium),
                                  Text('N ${state.getInvoice?.balance}',
                                      style: theme.textTheme.bodyMedium),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('VAT Tax (7.5%)',
                                      style: theme.textTheme.bodyMedium),
                                  Text('N ${state.getInvoice?.vat}',
                                      style: theme.textTheme.bodyMedium),
                                ],
                              ),
                            ),
                            SizedBox(height: 30.v),
                            Container(
                                height: 30.h,
                                color: Colors.grey,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sub Total'),
                                    Text('107,500')
                                  ],
                                )),
                            SizedBox(height: 30.v),
                            Container(
                              height: 20.h,
                              color: theme.primaryColor,
                              padding: EdgeInsets.symmetric(horizontal: 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      'For enquiries and complaints, kindly visit',
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(fontSize: 11)),
                                  Text('hr@artisanoga.com',
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                              color: AppColors.kwhite,
                                              fontSize: 11))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Amount to Pay ",
                                style: CustomTextStyles.titleSmallff3a332c_1),
                            TextSpan(text: " "),
                            TextSpan(
                                text: "N107,500",
                                style: CustomTextStyles.titleSmallfff7941e_1)
                          ]),
                          textAlign: TextAlign.left),
                      // CustomDropDown<String>(
                      //   title: "Payment Method",
                      //   items: state.paymentMethodList,
                      //   selectedItem: state.paymentMethod ?? '',
                      //   itemLabel: (history) => history,
                      //   onChanged: (value) {
                      //     // context.read<PaymentBloc>().add(
                      //     //       PaymentEvent.updateEmploymentHistory(
                      //     //           value ?? ''),
                      //     //     );
                      //     print('ssss ${value}');
                      //   },
                      // )

                      CustomElevatedButton(text: 'Submit', onPressed: () {})
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
