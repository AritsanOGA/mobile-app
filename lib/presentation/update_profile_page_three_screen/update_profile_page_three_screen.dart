import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_subtitle.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UpdateProfilePageThreeScreen extends StatelessWidget {
  UpdateProfilePageThreeScreen({Key? key}) : super(key: key);

  TextEditingController amountController = TextEditingController();

  TextEditingController inputHereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Min. Amount",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: CustomTextFormField(
                            title:'Password' ,
                              controller: amountController,
                              hintText: "Enter Minimum Amount",
                              hintStyle: CustomTextStyles.bodyMediumGray700,
                              borderDecoration: TextFormFieldStyleHelper
                                  .underLinePrimaryContainer)),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Max. Amount",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Enter Maximum Amount",
                              style: CustomTextStyles.bodyMediumGray700)),
                      SizedBox(height: 15.v),
                      Divider(indent: 1.h),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Select a Category",
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h, right: 19.h),
                          child: _buildSelectASkill(context,
                              text: "Choose a category")),
                      SizedBox(height: 13.v),
                      Divider(indent: 1.h),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h, right: 19.h),
                          child: _buildSelectASkill(context,
                              text: "Select a Skill")),
                      SizedBox(height: 1.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("You can select more than one skill",
                              style: CustomTextStyles.bodyMediumGray700)),
                      SizedBox(height: 15.v),
                      Divider(indent: 1.h),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Year(s) of Experience",
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: CustomTextFormField(
                            title:'Password' ,
                              controller: inputHereController,
                              hintText: "Input here",
                              hintStyle: CustomTextStyles.bodyMediumGray700,
                              textInputAction: TextInputAction.done,
                              borderDecoration: TextFormFieldStyleHelper
                                  .underLinePrimaryContainer)),
                      Spacer(),
                      CustomElevatedButton(
                          text: "Save",
                          // margin: EdgeInsets.only(left: 1.h),
                          // buttonStyle:
                          //     CustomButtonStyles.fillSecondaryContainerTL24,
                          // buttonTextStyle: CustomTextStyles
                          //     .titleLargeOnPrimaryContainerSemiBold, 
                              onPressed: () {  },),
                      SizedBox(height: 25.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: 130.h,
                              child: Divider(
                                  color: theme.colorScheme.primaryContainer
                                      .withOpacity(1))))
                    ]))));
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

  /// Common widget
  Widget _buildSelectASkill(
    BuildContext context, {
    required String text,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 14.v),
              child: Text(text,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: theme.colorScheme.primary))),
          Container(
              height: 19.adaptSize,
              width: 19.adaptSize,
              margin: EdgeInsets.only(top: 15.v),
              padding: EdgeInsets.all(3.h),
              decoration: AppDecoration.orange
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 11.adaptSize,
                  width: 11.adaptSize,
                  alignment: Alignment.center))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
