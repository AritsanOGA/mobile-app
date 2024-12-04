import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_checkbox_button.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PayWithCardPageScreen extends StatelessWidget {
  PayWithCardPageScreen({Key? key}) : super(key: key);

  TextEditingController enterDigitPinController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController cwController = TextEditingController();

  TextEditingController yourDigitPinController = TextEditingController();

  bool useAsDefault = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeftOnprimary,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(top: 3.v, bottom: 5.v),
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 111.h),
                                child: Text("Pay with Card",
                                    style: theme.textTheme.titleLarge))
                          ])),
                  SizedBox(height: 17.v),
                  Container(
                      width: 296.h,
                      margin: EdgeInsets.only(left: 44.h, right: 45.h),
                      child: Text("We will share your data with Employers",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium)),
                  SizedBox(height: 41.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 53.v,
                      width: 71.h),
                  SizedBox(height: 15.v),
                  Text("Please enter your card details",
                      style: CustomTextStyles.bodySmallGray800b2),
                  SizedBox(height: 35.v),
                  _buildEnterDigitPin(context),
                  SizedBox(height: 28.v),
                  _buildDateRow(context),
                  SizedBox(height: 28.v),
                  _buildYourDigitPin(context),
                  SizedBox(height: 19.v),
                  _buildUseAsDefault(context),
                  SizedBox(height: 58.v),
                  _buildMakePayment(context),
                  Spacer(),
                  SizedBox(
                      width: 130.h,
                      child: Divider(
                          color: theme.colorScheme.primaryContainer
                              .withOpacity(1)))
                ]))));
  }

  /// Section Widget
  Widget _buildEnterDigitPin(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            title: 'Password',
            controller: enterDigitPinController,
            hintText: "Enter your 6 Digit Pin",
            hintStyle: theme.textTheme.titleSmall!,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(20.h, 16.v, 8.h, 15.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEleyecloseSecondarycontainer,
                    height: 17.adaptSize,
                    width: 17.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 48.v),
            contentPadding:
                EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v)));
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: CustomTextFormField(
                title: 'Password',
                controller: dateController,
                hintText: "Expire Date",
                hintStyle: theme.textTheme.titleSmall!,
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(21.h, 15.v, 6.h, 16.v),
                    child: CustomImageView(
                        imagePath:
                            ImageConstant.imgEleyecloseSecondarycontainer,
                        height: 17.v,
                        width: 18.h)),
                prefixConstraints: BoxConstraints(maxHeight: 48.v),
                contentPadding:
                    EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v))));
  }

  /// Section Widget
  Widget _buildCw(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: CustomTextFormField(
                title: 'Password',
                controller: cwController,
                hintText: "CW",
                hintStyle: theme.textTheme.titleSmall!,
                prefix: Container(
                    margin: EdgeInsets.fromLTRB(17.h, 15.v, 6.h, 16.v),
                    child: CustomImageView(
                        imagePath:
                            ImageConstant.imgEleyecloseSecondarycontainer,
                        height: 17.v,
                        width: 18.h)),
                prefixConstraints: BoxConstraints(maxHeight: 48.v),
                contentPadding:
                    EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v))));
  }

  /// Section Widget
  Widget _buildDateRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildDate(context), _buildCw(context)]));
  }

  /// Section Widget
  Widget _buildYourDigitPin(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            title: 'Password',
            controller: yourDigitPinController,
            hintText: "Your 4 Digit Pin",
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(21.h, 16.v, 7.h, 15.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEleyecloseSecondarycontainer,
                    height: 17.adaptSize,
                    width: 17.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 48.v),
            contentPadding:
                EdgeInsets.only(top: 15.v, right: 30.h, bottom: 15.v)));
  }

  /// Section Widget
  Widget _buildUseAsDefault(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerRight,
                text: "Use as Default",
                value: useAsDefault,
                onChange: (value) {
                  useAsDefault = value;
                })));
  }

  /// Section Widget
  Widget _buildMakePayment(BuildContext context) {
    return CustomElevatedButton(
      text: "Make Payment",
      onPressed: () {},
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
