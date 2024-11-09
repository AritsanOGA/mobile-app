import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageOneScreen extends StatelessWidget {
  JSCreateAccountPageOneScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.h, vertical: 12.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 26.v),
                                  Row(children: [
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
                                  ]),
                                  SizedBox(height: 37.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("Add Guarantor",
                                          style: CustomTextStyles
                                              .titleMediumOnPrimaryMedium)),
                                  SizedBox(height: 18.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("Name",
                                          style: theme.textTheme.bodyMedium)),
                                  SizedBox(height: 6.v),
                                  _buildName(context),
                                  SizedBox(height: 27.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("Email",
                                          style: theme.textTheme.bodyMedium)),
                                  SizedBox(height: 7.v),
                                  _buildEmail(context),
                                  SizedBox(height: 27.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("Residential Address",
                                          style: theme.textTheme.bodyMedium)),
                                  SizedBox(height: 7.v),
                                  _buildAddress(context),
                                  SizedBox(height: 17.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEmojioneMonoto,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 11.h,
                                                top: 4.v,
                                                bottom: 2.v),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "Agree with",
                                                      style: CustomTextStyles
                                                          .titleSmallff3a332c_1),
                                                  TextSpan(text: " "),
                                                  TextSpan(
                                                      text:
                                                          "Terms and Conditions",
                                                      style: CustomTextStyles
                                                          .titleSmallfff7941e_1)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                                  SizedBox(height: 61.v),
                                  _buildSubmit(context),
                                  Spacer(),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          width: 130.h,
                                          child: Divider(
                                              color:
                                                  theme.colorScheme.onPrimary)))
                                ])))))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: nameController,
            hintText: "Enter Guarantor’s Name",
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Enter Guarantor’s Email",
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: addressController,
            hintText: "Enter Residential Address",
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
        text: "Submit", margin: EdgeInsets.symmetric(horizontal: 3.h));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
