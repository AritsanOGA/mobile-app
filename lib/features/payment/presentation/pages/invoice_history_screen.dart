import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class InvoiceHistoryScreen extends StatelessWidget {
  const InvoiceHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      appBar: CustomAppBar(
        title: 'Invoice History',
      ),
      body: BlocBuilder<PaymentBloc, PaymentState>(
        bloc: context.read<PaymentBloc>()..add(PaymentEvent.getAllInvoice()),
        builder: (context, state) {
          if (state.getAllInvoiceState == GetAllInvoiceState.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.getAllInvoiceState == GetAllInvoiceState.failure) {
            return Center(child: Text('Error: '));
          }

          if (state.invoices.isEmpty) {
            return Center(child: Text('No items found.'));
          }
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  ...List.generate(state.invoices.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 3,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  // SizedBox(
                                  //   width: 50,
                                  //   height: 50,
                                  //   child: CachedNetworkImage(
                                  //     imageUrl: state.invoices[index].logo,

                                  //     //  state.jobSeekerJobList[index].profileImage,
                                  //     fit: BoxFit.cover,

                                  //     progressIndicatorBuilder:
                                  //         (context, url, downloadProgress) =>
                                  //             const Center(),
                                  //     imageBuilder: (context, imageProvider) =>
                                  //         Container(
                                  //       // width: 50,
                                  //       // height: 50,
                                  //       decoration: BoxDecoration(
                                  //         shape: BoxShape.circle,
                                  //         // borderRadius: BorderRadius.circular(10),
                                  //         image: DecorationImage(
                                  //           image:
                                  //               imageProvider, // Use the provided imageProvider
                                  //           fit: BoxFit.cover,
                                  //         ),
                                  //       ),
                                  //     ),
                                  //     errorWidget: (context, url, error) =>
                                  //         const Icon(Icons.error),
                                  //   ),
                                  // ),
                                  Image.asset(ImageConstant.delivery),
                                  SizedBox(
                                    width: 10.v,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(state.invoices[index].jobTitle,
                                              style: theme.textTheme.bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w600)),
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                          Text(
                                              state.invoices[index]
                                                          .invoiceStatus ==
                                                      '0'
                                                  ? 'Unpaid'
                                                  : state.invoices[index]
                                                              .invoiceStatus ==
                                                          '2'
                                                      ? 'Waiting for approval'
                                                      : state.invoices[index]
                                                                  .invoiceStatus ==
                                                              '3'
                                                          ? 'Initial Deposit'
                                                          : state
                                                                      .invoices[
                                                                          index]
                                                                      .invoiceStatus ==
                                                                  '5'
                                                              ? 'Paid'
                                                              : 'Waiting for approval',
                                              style: theme.textTheme.bodyMedium
                                                  ?.copyWith(
                                                fontSize: 10,
                                                color: state.invoices[index]
                                                            .invoiceStatus ==
                                                        '0'
                                                    ? Colors.red
                                                    : state.invoices[index]
                                                                .invoiceStatus ==
                                                            '2'
                                                        ? Colors.yellowAccent
                                                        : state.invoices[index]
                                                                    .invoiceStatus ==
                                                                '3'
                                                            ? Colors.blue
                                                            : state
                                                                        .invoices[
                                                                            index]
                                                                        .invoiceStatus ==
                                                                    '5'
                                                                ? Colors.green
                                                                : theme
                                                                    .primaryColor
                                                                    .withOpacity(
                                                                        0.8),
                                              )),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('N ${state.invoices[index].amount}',
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(DateFormat("dd MMM, yyyy")
                                      .format(state.invoices[index].createdAt)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
