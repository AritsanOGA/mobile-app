import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/widgets/custom_text_form_field.dart';

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
            body: SingleChildScrollView(
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(height: 39.v),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Employment History",
                                  style: CustomTextStyles
                                      .titleMediumOnPrimaryMedium)),
                          SizedBox(height: 18.v),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Company Name",
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 5.v),
                          _buildName(context),
                          SizedBox(height: 28.v),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Role",
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 6.v),
                          _buildEnterRole(context),
                          SizedBox(height: 28.v),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Start Year",
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 6.v),
                          _buildMmddyy(context),
                          SizedBox(height: 29.v),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Description",
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 5.v),
                          _buildInputHere(context),
                          SizedBox(height: 44.v),
                          _buildNext(context),
                          // Spacer(),
                        ])))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: nameController,
            hintText: "Enter Company’s Name",
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildEnterRole(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: enterRoleController,
            hintText: "Enter Role",
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildMmddyy(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            textInputType: TextInputType.number,
            controller: mmddyyController,
            hintText: "MM/DD/YY",
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildInputHere(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: inputHereController,
            hintText: "Input here",
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done,
            maxLines: 10));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "Finish", margin: EdgeInsets.symmetric(horizontal: 3.h));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
