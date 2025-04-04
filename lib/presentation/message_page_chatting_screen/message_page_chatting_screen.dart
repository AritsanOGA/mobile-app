import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MessagePageChattingScreen extends StatelessWidget {
  MessagePageChattingScreen({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 11.v),
                child: Column(children: [
                  Text("Kingsley Williams",
                      style: CustomTextStyles.titleSmallOnPrimarySemiBold),
                  Spacer(),
                  CustomElevatedButton(
                    // height: 25.v,
                    // width: 220.h,
                    text: "Start Conversation with Kingsley", onPressed: () {},
                    // buttonStyle: CustomButtonStyles.fillPrimaryContainer,
                    // buttonTextStyle:
                    //     CustomTextStyles.labelLargeOnPrimaryContainer
                  ),
                  SizedBox(height: 33.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          height: 35.v,
                          width: 96.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgThumbsUpPrimarycontainer,
                                    height: 35.v,
                                    width: 96.h,
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            17.h, 8.v, 14.h, 6.v),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 4.v),
                                                  child: Text("Hi",
                                                      style: CustomTextStyles
                                                          .bodyMediumOnPrimaryContainer)),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 6.v),
                                                  child: Text("13:38",
                                                      style: CustomTextStyles
                                                          .labelMediumOnPrimaryContainer))
                                            ])))
                              ]))),
                  SizedBox(height: 19.v)
                ])),
            bottomNavigationBar: _buildTwentyTwo(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 22.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: CustomImageView(
            imagePath: ImageConstant.imgEllipse261,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(25.h)),
        actions: [
          Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(left: 32.h, top: 38.v, right: 6.h),
              decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(6.h),
                  border: Border.all(
                      color: appTheme.gray50,
                      width: 2.h,
                      strokeAlign: strokeAlignOutside)))
        ]);
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 12.h, right: 12.h, bottom: 12.v),
        decoration: AppDecoration.brown,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 48.adaptSize,
                width: 48.adaptSize),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 11.h, top: 9.v, bottom: 9.v),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: CustomTextFormField(
                                  title: 'Password',
                                  controller: messageController,
                                  hintText: "Message",
                                  textInputAction: TextInputAction.done,
                                  suffix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 8.v, 10.h, 7.v),
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserPrimary,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize)),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 29.v),
                                  contentPadding: EdgeInsets.only(
                                      left: 16.h, top: 6.v, bottom: 6.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.fillBlack,
                                  filled: true,
                                  fillColor:
                                      appTheme.black900.withOpacity(0.64))),
                          CustomImageView(
                              imagePath: ImageConstant.imgMenu,
                              height: 20.v,
                              width: 15.h,
                              margin: EdgeInsets.only(
                                  left: 23.h, top: 5.v, bottom: 4.v))
                        ])))
          ]),
          Padding(
              padding: EdgeInsets.only(top: 18.v),
              child: SizedBox(
                  width: 130.h, child: Divider(color: appTheme.gray700)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
