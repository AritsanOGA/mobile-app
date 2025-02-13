import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/payment/domain/entities/post_invoice_entity.dart';
import 'package:artisan_oga/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_radio_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CreateInvoiceScreen extends HookWidget {
  const CreateInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final amountController = useTextEditingController();
    final balanceController = useTextEditingController();
    final depositNameController = useTextEditingController();
    final tellerNoController = useTextEditingController();
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
              Navigator.pushNamed(context, AppRoutes.successfulJobPostedPage);
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
                              context.read<HomeBloc>().add(
                                    HomeEvent.updateSelectedPackage(value),
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
                              context.read<HomeBloc>().add(
                                    HomeEvent.updateSelectedPackage(value),
                                  );
                            })),
                    SizedBox(height: 20.v),
                    CustomTextFormField(
                      title: 'Amount',
                      controller: amountController,
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
                      controller: balanceController,
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
                    SizedBox(height: 20.v),
                    CustomTextFormField(
                      title: 'Depositors Name',
                      validator: FormValidation.stringValidation,
                      controller: depositNameController,
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
                    SizedBox(height: 20.v),
                    CustomTextFormField(
                      title: 'Teller No (Optional)',
                      controller: tellerNoController,
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
                    SizedBox(height: 60.v),
                    CustomElevatedButton(
                        text: 'Submit',
                        onPressed: () {
                          context
                              .read<PaymentBloc>()
                              .add(PaymentEvent.postInvoice(PostInvoiceEntity(
                                amount: double.parse(amountController.text),
                                balance: double.parse(balanceController.text),
                                currency: '',
                                package: '',
                                percentage: 0,
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
