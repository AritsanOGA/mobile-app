import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_dialog.dart';
import 'package:artisan_oga/shared/widgets/custom_radio_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../presentation/payment_page_screen/payment_page_screen.dart';

class PostJobFourScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final officeAddressController = useTextEditingController();
    final cityController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            body: BlocConsumer<HomeBloc, HomeState>(
              listener: (context, state) {
                if (state.postJobState == PostJobState.success) {
                  Navigator.pushNamed(
                      context, AppRoutes.successfulJobPostedPage);
                } else if (state.postJobState == PostJobState.failure) {
                  ToastUtils.showRedToast(state.errorMessage ?? '');
                }
              },
              builder: (context, state) {
                return Form(
                  key: formKey,
                  child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 38.v),
                      child: SingleChildScrollView(
                          child: Column(children: [
                        GestureDetector(
                            onTap: (() {
                              Navigator.of(context).pop();
                            }),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowLeftOnprimary,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                      onTap: () {
                                        onTapImgArrowLeft(context);
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: Text("Back",
                                          style: CustomTextStyles
                                              .titleMediumOnPrimary))
                                ]))),
                        SizedBox(height: 23.v),
                        SizedBox(height: 20.v),
                        CustomTextFormField(
                          title: 'Area',
                          validator: FormValidation.stringValidation,
                          controller: cityController,
                          titleStyle: CustomTextStyles.titleMediumMedium18,
                          hintText: 'Enter Area',
                          isBorderNone: true,
                        ),
                        SizedBox(height: 25.v),
                        CustomTextFormField(
                          controller: officeAddressController,
                          title: 'Office Address',
                          validator: FormValidation.stringValidation,
                          titleStyle: CustomTextStyles.titleMediumMedium18,
                          hintText: 'Enter Office Address',
                          isBorderNone: true,
                        ),
                        SizedBox(height: 25.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text("Is Accommodation Available?",
                                    style:
                                        CustomTextStyles.titleMediumMedium18))),
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(right: 74.h),
                            child: CustomRadioButton(
                                text: "Yes",
                                value: state.availabilityList[0],
                                groupValue: state.availablity,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedAvailability(
                                            value),
                                      );
                                })),
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, right: 58.h),
                            child: CustomRadioButton(
                                text: "No",
                                value: state.availabilityList[1],
                                groupValue: state.availablity,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedAvailability(
                                            value),
                                      );
                                })),
                        SizedBox(height: 25.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text("Package",
                                    style:
                                        CustomTextStyles.titleMediumMedium18))),
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(right: 74.h),
                            child: CustomRadioButton(
                                text: "Male",
                                value: state.packageList[0],
                                groupValue: state.package,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedPackage(value),
                                      );
                                })),
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, right: 58.h),
                            child: CustomRadioButton(
                                text: "Female",
                                value: state.packageList[1],
                                groupValue: state.package,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedEducationlevel(
                                            value!),
                                      );
                                })),
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, right: 58.h),
                            child: CustomRadioButton(
                                text: "Both",
                                value: state.packageList[2],
                                groupValue: state.package,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedEducationlevel(
                                            value!),
                                      );
                                })),
                        SizedBox(height: 44.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: 350.h,
                                margin: EdgeInsets.only(left: 2.h, right: 12.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              "By continuing, you agree to ArtisanOga’s",
                                          style: CustomTextStyles
                                              .bodyMediumff3a332c),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "Jobs Terms\nand Conditions",
                                          style: CustomTextStyles
                                              .titleSmallfff7941e_1),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "including our",
                                          style: CustomTextStyles
                                              .bodyMediumff3a332c),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text:
                                              "policies prohibiting\ndiscriminatory job posts.",
                                          style: CustomTextStyles
                                              .titleSmallfff7941e_1)
                                    ]),
                                    textAlign: TextAlign.left))),
                        SizedBox(height: 40.v),
                        BlocSelector<HomeBloc, HomeState, PostJobEntity>(
                          selector: (state) {
                            return state.postJobRequest;
                          },
                          builder: (context, postJobRequest) {
                            return CustomElevatedButton(
                              isBusy:
                                  state.postJobState == PostJobState.loading,
                              onPressed: (() {
                                if (formKey.currentState?.validate() ?? false) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.postJob(
                                          postJobRequest.copyWith(
                                              city: cityController.text,
                                              officeAddress:
                                                  officeAddressController.text,
                                              available: state.availablity,
                                              availableFor: state.package),
                                        ),
                                      );
                                }

                                // Navigator.push(
                                //     context,
                                //     PageTransition(
                                //         type: PageTransitionType.rightToLeft,
                                //         duration: Durations.long1,
                                //         child: PaymentPageScreen()));
                              }),
                              text: "Next",
                            );
                          },
                        ),
                        SizedBox(height: 5.v)
                      ]))),
                );
              },
            )));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
