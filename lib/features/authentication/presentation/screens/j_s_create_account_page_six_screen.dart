import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_dialog.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageSixScreen extends HookWidget {
  final String email;
  JSCreateAccountPageSixScreen({required this.email, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final guaranterNameController = useTextEditingController();
    final guaranterEmailController = useTextEditingController();
    final guaranterAddressController = useTextEditingController();
    final guaranterPhoneNumberController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
            body: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.jobSeekerSignUpState ==
                    JobSeekerSignUpState.success) {
                  print('suceess');
                  Navigator.pushNamed(context, AppRoutes.verifyJobSeekerScreen,
                      arguments: email);
                } else if (state.jobSeekerSignUpState ==
                    JobSeekerSignUpState.failure) {
                               ToastUtils.showRedToast(state.errorMessage ?? '');
             
                }
              },
              builder: (context, state) {
                return SingleChildScrollView(
                    child: Form(
                  key: formKey,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 12.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10.v,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("Add Guarantor",
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryMedium)),
                            SizedBox(height: 30.v),
                            CustomTextFormField(
                                title: 'Name',
                                controller: guaranterNameController,
                                textInputType: TextInputType.name,
                                validator: FormValidation.stringValidation,
                                hintText: "Enter Guarantor’s Name",
                                hintStyle: theme.textTheme.titleSmall!),
                            SizedBox(height: 30.v),
                            CustomTextFormField(
                                title: 'Email',
                                controller: guaranterEmailController,
                                textInputType: TextInputType.emailAddress,
                                hintText: "Enter Guarantor’s Email",
                                validator: FormValidation.emailValidation,
                                hintStyle: theme.textTheme.titleSmall!),
                            SizedBox(height: 30.v),
                            CustomTextFormField(
                                title: 'Phone Number',
                                textInputType: TextInputType.phone,
                                controller: guaranterPhoneNumberController,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(11),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                hintText: "Enter Guarantor’s Phone Number",
                                validator: FormValidation.phoneValidation,
                                hintStyle: theme.textTheme.titleSmall!),
                            SizedBox(height: 30.v),
                            CustomTextFormField(
                                title: 'Residential Address',
                                controller: guaranterAddressController,
                                textInputType: TextInputType.streetAddress,
                                hintText: "Enter Residential Address",
                                validator: FormValidation.stringValidation,
                                hintStyle: theme.textTheme.titleSmall!),
                            SizedBox(height: 40.v),
                            BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                return CustomElevatedButton(
                                  isBusy: state.jobSeekerSignUpState ==
                                      JobSeekerSignUpState.loading,
                                  text: "Submit",
                                  onPressed: (() {
                                    if (formKey.currentState?.validate() ??
                                        false) {
                                      context.read<AuthBloc>().add(
                                          AuthEvent.registerJobSeeker(state
                                              .registerJobSeekerRequest
                                              .copyWith(
                                                  guarantorPhoneNumber:
                                                      guaranterPhoneNumberController
                                                          .text,
                                                  guarantorName:
                                                      guaranterNameController
                                                          .text,
                                                  guarantorEmail:
                                                      guaranterEmailController
                                                          .text,
                                                  residentialAddress:
                                                      guaranterAddressController
                                                          .text)));
                                    }
                                  }),
                                );
                              },
                            ),
                            SizedBox(height: 40.v),
                          ])),
                ));
              },
            )));
  }
}
