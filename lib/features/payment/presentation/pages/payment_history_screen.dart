import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class PaymentHistoryScreen extends StatelessWidget {
  const PaymentHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      appBar: CustomAppBar(
        title: 'Payment History',
      ),
      body: BlocBuilder<PaymentBloc, PaymentState>(
        bloc: context.read<PaymentBloc>()..add(PaymentEvent.getAllPayment()),
        builder: (context, state) {
          if (state.getAllPaymentState == GetAllPaymentState.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.getAllPaymentState == GetAllPaymentState.failure) {
            return Center(child: Text('Error: '));
          }

          if (state.payments.isEmpty) {
            return Center(child: Text('No items found.'));
          }

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  ...List.generate(state.payments.length, (index) {
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
                                  //     imageUrl: state.payments[index].logo,

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
                                          Text(state.payments[index].jobTitle,
                                              style: theme.textTheme.bodyMedium
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w600)),
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                          Text(state.payments[index].jobTitle,
                                              style: theme.textTheme.bodyMedium
                                                  ?.copyWith(
                                                color: theme.primaryColor
                                                    .withOpacity(0.8),
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
                                  Text('N ${state.payments[index].amount}',
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w600)),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text('Dee One Fashion'),
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
