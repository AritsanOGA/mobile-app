import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore_for_file: must_be_immutable
class ChangePasswordPageOneScreen extends StatelessWidget {
  ChangePasswordPageOneScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Change Password',
            ),
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 30.v),
              child: SizedBox(
                  child: Form(
                      key: _formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 227.adaptSize,
                                  width: 227.adaptSize,
                                  padding: EdgeInsets.all(39.h),
                                  decoration: AppDecoration
                                      .fillSecondaryContainer
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder113),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgFlatColorIconsLock,
                                  ),
                                )),
                            SizedBox(height: 32.v),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: 327.h,
                                    margin: EdgeInsets.only(
                                        left: 29.h, right: 30.h),
                                    child: Text(
                                        "Your New Password Must be Different\nfrom Previously Used Password",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleMediumGray700Medium))),
                            SizedBox(height: 50.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("New Password",
                                    style: CustomTextStyles
                                        .titleMediumPrimaryContainer)),
                            SizedBox(height: 13.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h, right: 4.h),
                                child: CustomTextFormField(
                                    title: 'Password',
                                    controller: newpasswordController,
                                    hintText: "Racoon659359",
                                    hintStyle:
                                        CustomTextStyles.titleMediumGray700,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    obscureText: true,
                                    borderDecoration: TextFormFieldStyleHelper
                                        .underLinePrimaryContainer)),
                            SizedBox(height: 28.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("Confirm Password",
                                    style: CustomTextStyles
                                        .titleMediumPrimaryContainer)),
                            SizedBox(height: 11.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h, right: 4.h),
                                child: CustomTextFormField(
                                    title: 'Password',
                                    controller: confirmpasswordController,
                                    hintText: "*********************",
                                    hintStyle:
                                        CustomTextStyles.titleMediumGray700,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    obscureText: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 3.h),
                                    borderDecoration: TextFormFieldStyleHelper
                                        .underLinePrimaryContainer)),
                            SizedBox(height: 67.v),
                            CustomElevatedButton(
                              text: "Save",
                              // margin: EdgeInsets.only(
                              //     left: 3.h, right: 4.h),
                              // buttonStyle: CustomButtonStyles
                              //     .fillSecondaryContainerTL24,
                              // buttonTextStyle: CustomTextStyles
                              //     .titleLargeOnPrimaryContainerSemiBold,
                              onPressed: () {},
                            ),
                            Spacer(),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: 130.h,
                                    child: Divider(
                                        color: theme
                                            .colorScheme.primaryContainer
                                            .withOpacity(1))))
                          ]))),
            )));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
