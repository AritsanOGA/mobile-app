import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageSixScreen extends StatelessWidget {
  JSCreateAccountPageSixScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController enterRoleController = TextEditingController();

  TextEditingController mmddyyController = TextEditingController();

  TextEditingController inputHereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
            body: SingleChildScrollView(
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: 30,
                          // ),

                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Add Guarantor",
                                  style: CustomTextStyles
                                      .titleMediumOnPrimaryMedium)),

                          SizedBox(height: 15.v),
                          CustomTextFormField(
                              title: 'Name',
                              controller: nameController,
                              hintText: "Enter Guarantor’s Name",
                              hintStyle: theme.textTheme.titleSmall!),
                          SizedBox(height: 28.v),

                          CustomTextFormField(
                              title: 'Email',
                              controller: nameController,
                              hintText: "Enter Guarantor’s Email",
                              hintStyle: theme.textTheme.titleSmall!),

                          SizedBox(height: 28.v),

                          CustomTextFormField(
                              title: 'Residential Address',
                              controller: nameController,
                              hintText: "Enter Residential Address",
                              hintStyle: theme.textTheme.titleSmall!),

                          SizedBox(height: 29.v),
                          CustomElevatedButton(
                            text: "Submit",
                            onPressed: () {},
                          )
                          // _buildInputHere(context),
                          // SizedBox(height: 44.v),
                          // _buildNext(context),
                          // Spacer(),
                        ])))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            title: 'Password',
            controller: nameController,
            hintText: "Enter Guarantor’s Name",
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildEnterRole(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            title: 'Password',
            controller: enterRoleController,
            hintText: "Enter Role",
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildMmddyy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            title: 'Password',
            textInputType: TextInputType.number,
            controller: mmddyyController,
            hintText: "MM/DD/YY",
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  // Widget _buildInputHere(BuildContext context) {
  //   return Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 3.h),
  //       child: CustomTextFormFieldß
  //           title: 'Password',
  //           controller: inputHereController,
  //           hintText: "Input here",
  //           hintStyle: theme.textTheme.titleSmall!,
  //           textInputAction: TextInputAction.done,
  //           maxLines: 10));
  // }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      text: "Finish",
      onPressed: () {},
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
