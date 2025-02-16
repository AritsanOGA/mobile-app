import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:artisan_oga/features/payment/presentation/widgets/separtor_widget.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class Invoice1Screen extends StatelessWidget {
  const Invoice1Screen({super.key});

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
              BlocBuilder<PaymentBloc, PaymentState>(
                bloc: context.read<PaymentBloc>()
                  ..add(PaymentEvent.getInvoice()),
                builder: (context, state) {
                  // if (state.getInvoiceState == GetInvoiceState.loading) {
                  //   return Center(child: CircularProgressIndicator());
                  // }

                  if (state.getInvoiceState == GetJobSeekerJobState.failure) {
                    return Center(child: Text('Error: '));
                  }

                  return Column(
                    children: [
                      Material(
                        elevation: 3,
                        child: Container(
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
                                    Image.asset(ImageConstant.artisanSmallLogo),
                                    Text(DateFormat("dd MMM, yyyy")
                                        .format(state.getInvoice!.createdAt))
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.v),
                              MySeparator(color: theme.primaryColor),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('Invoice No',
                                    style: theme.textTheme.bodyMedium),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                    state.getInvoice?.invoiceNumber
                                            .toString() ??
                                        '',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w600)),
                              ),
                              Center(
                                  child: Text('Invoice',
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: theme.primaryColor))),
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
                                            '${state.getInvoice?.users.fullName ?? ''}',
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18)),
                                        Text(
                                            '${state.getInvoice?.users.email ?? ''}',
                                            style: theme.textTheme.bodyMedium)
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: state.getInvoice?.status == 0 &&
                                                  state.getInvoice
                                                          ?.percentage ==
                                                      75
                                              ? Colors.red
                                              : state.getInvoice?.status == 2 &&
                                                      state.getInvoice
                                                              ?.percentage ==
                                                          75
                                                  ? Colors.yellow
                                                  : state.getInvoice?.status ==
                                                              3 &&
                                                          state.getInvoice
                                                                  ?.percentage ==
                                                              75
                                                      ? Colors.blueAccent
                                                      : state.getInvoice
                                                                      ?.status ==
                                                                  5 &&
                                                              state.getInvoice
                                                                      ?.percentage ==
                                                                  75
                                                          ? Colors.green
                                                          : theme.primaryColor
                                                              .withOpacity(0.8)),
                                      child: Center(
                                          child: Text(
                                              state.getInvoice?.status == 0 &&
                                                      state.getInvoice
                                                              ?.percentage ==
                                                          75
                                                  ? 'Unpaid'
                                                  : state.getInvoice?.status ==
                                                              2 &&
                                                          state.getInvoice
                                                                  ?.percentage ==
                                                              75
                                                      ? 'Waiting for approval'
                                                      : state.getInvoice?.status ==
                                                                  3 &&
                                                              state.getInvoice
                                                                      ?.percentage ==
                                                                  75
                                                          ? 'Initial Deposit'
                                                          : state.getInvoice
                                                                          ?.status ==
                                                                      5 &&
                                                                  state.getInvoice
                                                                          ?.percentage ==
                                                                      75
                                                              ? 'Paid'
                                                              : 'Waiting for approval',
                                              style: theme.textTheme.bodyMedium
                                                  ?.copyWith(
                                                      fontSize: 10,
                                                      color: AppColors.kwhite))),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Container(
                                  width: double.infinity,
                                  height: 30.h,
                                  color: Colors.grey.withOpacity(0.50),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Center(
                                        child: Text('Description',
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w600))),
                                  )),
                              SizedBox(height: 20.v),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        'Initial Payment (${state.getInvoice?.percentage ?? ''}%)',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600)),
                                    Text(state.getInvoice?.amountWithVat ?? '',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w700)),
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
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600)),
                                    Text('N ${state.getInvoice?.balWithVat}',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w700)),
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
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600)),
                                    Text('N ${state.getInvoice?.vat}',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30.v),
                              Container(
                                  height: 30.h,
                                  color: Colors.grey.withOpacity(0.50),
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Sub Total',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w600)),
                                      Text(state.getInvoice?.totalWithVat ?? '',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                  fontWeight: FontWeight.w700))
                                    ],
                                  )),
                              SizedBox(height: 30.v),
                              Container(
                                height: 30.h,
                                color: theme.primaryColor,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        'For enquiries and complaints, kindly visit',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500)),
                                    Text('hr@artisanoga.com',
                                        style: theme.textTheme.bodyMedium
                                            ?.copyWith(
                                                color: AppColors.kwhite,
                                                fontSize: 10))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 40.h),
              CustomElevatedButton(
                  text: 'Go to home',
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AppRoutes.employerNavBarScreen);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
