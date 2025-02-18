import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

// ignore_for_file: must_be_immutable
class EmployerPasswordChangeScreen extends HookWidget {
  EmployerPasswordChangeScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final oldPasswordController = useTextEditingController();
    final newpasswordController = useTextEditingController();
    final confirmpasswordController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Change Password',
            ),
            resizeToAvoidBottomInset: false,
            body: Form(
              key: formKey,
              child: Padding(
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
                                    height: 140.adaptSize,
                                    width: 140.adaptSize,
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
                                  padding:
                                      EdgeInsets.only(left: 3.h, right: 4.h),
                                  child: CustomTextFormField(
                                      title: 'Old Password',
                                      controller: oldPasswordController,
                                      hintText: "*********************",
                                      titleStyle: CustomTextStyles
                                          .titleMediumPrimaryContainer,
                                      hintStyle:
                                          CustomTextStyles.titleMediumGray700,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true,
                                      borderDecoration: TextFormFieldStyleHelper
                                          .underLinePrimaryContainer)),
                              SizedBox(height: 30.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 3.h, right: 4.h),
                                  child: CustomTextFormField(
                                      isPassword: true,
                                      title: 'New Password',
                                      controller: newpasswordController,
                                      hintText: "*********************",
                                      titleStyle: CustomTextStyles
                                          .titleMediumPrimaryContainer,
                                      hintStyle:
                                          CustomTextStyles.titleMediumGray700,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true,
                                      borderDecoration: TextFormFieldStyleHelper
                                          .underLinePrimaryContainer)),
                              SizedBox(height: 30.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 3.h, right: 4.h),
                                  child: CustomTextFormField(
                                      title: 'Confirm Password',
                                      controller: confirmpasswordController,
                                      hintText: "*********************",
                                      titleStyle: CustomTextStyles
                                          .titleMediumPrimaryContainer,
                                      hintStyle:
                                          CustomTextStyles.titleMediumGray700,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true,
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
                            ]))),
              ),
            )));
  }
}
