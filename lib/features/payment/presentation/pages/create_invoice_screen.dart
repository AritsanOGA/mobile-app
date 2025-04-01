import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_radio_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class CreateInvoiceScreen extends HookWidget {
  final String identity;
  final String planName;
  final String amount;
  final String candidate;
  CreateInvoiceScreen({
    super.key,
    required this.amount,
    required this.identity,
    required this.planName,
    required this.candidate,
  });
  double selectedPercentage = 0.75;

  double getAmount() {
    return double.parse(amount) * selectedPercentage;
  }

  double getBalance() {
    return double.parse(amount) - getAmount();
  }

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          title: 'Invoice',
        ),
        body: BlocConsumer<PaymentBloc, PaymentState>(
          listener: (context, state) {
            if (state.postInvoiceState == PostInvoiceState.success) {
              Navigator.pushNamed(
                context,
                AppRoutes.invoicePage,
              );
            } else if (state.postInvoiceState == PostInvoiceState.failure) {
              ToastUtils.showRedToast(state.errorMessage ?? '');
            }
          },
          builder: (context, state) {
            return Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.v),
                    Center(
                      child: Text(
                          "Kindly Create an Invoice to Initiate Payment",
                          style: theme.textTheme.bodyMedium),
                    ),
                    SizedBox(height: 20.v),
                    CustomTextFormField(
                      title: 'No of candidates(s)',
                      // controller: noOfCandidate,
                      hintText: candidate,
                      readOnly: true,
                      validator: FormValidation.stringValidation,
                      hintStyle: theme.textTheme.titleSmall!,
                      suffixConstraints: BoxConstraints(
                        maxHeight: 48.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 20.h,
                        top: 15.v,
                        bottom: 15.v,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Text('I am paying', style: theme.textTheme.bodyMedium),
                    SizedBox(height: 20.v),
                    Padding(
                        padding: EdgeInsets.only(right: 74.h),
                        child: CustomRadioButton(
                            text: "75%",
                            value: state.payingAllList[0],
                            groupValue: state.payingAll,
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            onChange: (value) {
                              context.read<PaymentBloc>().add(
                                    PaymentEvent.updatePricePercent(
                                        value,
                                        double.parse(
                                            amount.replaceAll(',', '')),
                                        0.75),
                                  );
                            })),
                    Padding(
                        padding: EdgeInsets.only(top: 11.v, right: 58.h),
                        child: CustomRadioButton(
                            text: "100%",
                            value: state.payingAllList[1],
                            groupValue: state.payingAll,
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            onChange: (value) {
                              context.read<PaymentBloc>().add(
                                    PaymentEvent.updatePricePercent(
                                        value,
                                        double.parse(
                                            amount.replaceAll(',', '')),
                                        1),
                                  );
                            })),
                    SizedBox(height: 20.v),
                    CustomTextFormField(
                      title: 'Amount',
                      readOnly: true,
                      controller: TextEditingController(
                        text: () {
                          final candidateCount = int.tryParse(candidate) ?? 0;

                          final totalAmount =
                              (state.amount ?? 0.0) * candidateCount;
                          final formattedAmount =
                              NumberFormat("#,##0").format(totalAmount);

                          return formattedAmount;
                        }(),
                      ),
                      hintText: '',
                      validator: FormValidation.stringValidation,
                      hintStyle: theme.textTheme.titleSmall!,
                      suffixConstraints: BoxConstraints(
                        maxHeight: 48.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 20.h,
                        top: 15.v,
                        bottom: 15.v,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    CustomTextFormField(
                      title: 'Balance',
                      readOnly: true,
                      controller: TextEditingController(
                        text: () {
                          final candidateCount = int.tryParse(candidate) ?? 0;

                          final totalBalance =
                              (state.balance ?? 0.0) * candidateCount;
                          final formattedAmount =
                              NumberFormat("#,##0").format(totalBalance);
                          return formattedAmount;
                        }(),
                      ),
                      validator: FormValidation.stringValidation,
                      hintText: '',
                      hintStyle: theme.textTheme.titleSmall!,
                      suffixConstraints: BoxConstraints(
                        maxHeight: 48.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 20.h,
                        top: 15.v,
                        bottom: 15.v,
                      ),
                    ),
                    SizedBox(height: 60.v),
                    CustomElevatedButton(
                        text: 'Generate Invoice',
                        isBusy:
                            state.postInvoiceState == PostInvoiceState.loading,
                        onPressed: () {
                          final candidateCount = int.tryParse(candidate) ?? 0;
                          final totalBalance =
                              (state.balance ?? 0.0) * candidateCount;

                          final totalAmount =
                              (state.amount ?? 0.0) * candidateCount;

                          context
                              .read<PaymentBloc>()
                              .add(PaymentEvent.postInvoice(PostInvoiceEntity(
                                identity: identity,
                                amount: totalAmount,
                                balance: totalBalance,
                                currency: 'NGN',
                                package: planName,
                                percentage: int.parse(state.payingAll ?? ''),
                              )));
                        })
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
