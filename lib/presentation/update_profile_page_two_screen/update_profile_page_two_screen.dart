import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_subtitle.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_icon_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/services.dart';

// ignore_for_file: must_be_immutable
class UpdateProfilePageTwoScreen extends StatelessWidget {
  UpdateProfilePageTwoScreen({Key? key}) : super(key: key);

  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController jobPreferencesEditTextController =
      TextEditingController();

  TextEditingController phoneNumberEditTextController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
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
                                horizontal: 25.h, vertical: 12.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 4.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          height: 120.adaptSize,
                                          width: 120.adaptSize,
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse40120x120,
                                                    height: 120.adaptSize,
                                                    width: 120.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            60.h),
                                                    alignment:
                                                        Alignment.center),
                                                CustomIconButton(
                                                    height: 37.adaptSize,
                                                    width: 37.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(4.h),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .fillPrimaryTL18,
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgFluentCameraAdd48Filled))
                                              ]))),
                                  SizedBox(height: 29.v),
                                  Text("Update CV",
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 5.v),
                                  Container(
                                      padding: EdgeInsets.all(6.h),
                                      decoration: AppDecoration.outlineBlueGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder7),
                                      child: Row(children: [])),
                                  SizedBox(height: 33.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Full Name",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 16.v),
                                  _buildFullNameEditText(context),
                                  SizedBox(height: 28.v),
                                  Text("Email Address",
                                      style: theme.textTheme.titleMedium),
                                  SizedBox(height: 15.v),
                                  _buildEmailEditText(context),
                                  SizedBox(height: 21.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Job Preferences",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 15.v),
                                  _buildJobPreferencesEditText(context),
                                  SizedBox(height: 28.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Phone Number",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 15.v),
                                  _buildPhoneNumberEditText(context),
                                  SizedBox(height: 21.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Date of Birth",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 15.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("MM/DD/YY",
                                          style: CustomTextStyles
                                              .bodyMediumGray700)),
                                  SizedBox(height: 16.v),
                                  _buildNextButton(context),
                                  SizedBox(height: 25.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          width: 130.h,
                                          child: Divider(
                                              color: theme
                                                  .colorScheme.primaryContainer
                                                  .withOpacity(1))))
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 22.h, top: 20.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Edit Profile"));
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            title: 'Password',
            controller: fullNameEditTextController,
            hintText: "e.g David Jude",
            hintStyle: CustomTextStyles.bodyMediumGray700,
            borderDecoration:
                TextFormFieldStyleHelper.underLinePrimaryContainer));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            title: 'Password',
            controller: emailEditTextController,
            hintText: "Enter Email Address",
            hintStyle: CustomTextStyles.bodyMediumGray700,
            textInputType: TextInputType.emailAddress,
            borderDecoration:
                TextFormFieldStyleHelper.underLinePrimaryContainer));
  }

  /// Section Widget
  Widget _buildJobPreferencesEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            title: 'Password',
            controller: jobPreferencesEditTextController,
            hintText: "Enter Job Preferences",
            hintStyle: CustomTextStyles.bodyMediumGray700,
            borderDecoration:
                TextFormFieldStyleHelper.underLinePrimaryContainer));
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: CustomTextFormField(
            title: 'Password',
            controller: phoneNumberEditTextController,
            hintText: "Enter Phone Number",
            inputFormatters: [
              LengthLimitingTextInputFormatter(11),
              FilteringTextInputFormatter.digitsOnly,
            ],
            hintStyle: CustomTextStyles.bodyMediumGray700,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone,
            borderDecoration:
                TextFormFieldStyleHelper.underLinePrimaryContainer));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Next", onPressed: () {},
      // margin: EdgeInsets.only(left: 1.h),
      // buttonStyle: CustomButtonStyles.fillSecondaryContainerTL24,
      // buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainerSemiBold
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
