import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_subtitle.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';

class PayWithTransferPageScreen extends StatelessWidget {
  const PayWithTransferPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 6.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("Make payment to the Account Below: ",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 30.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Bank Name: ",
                                style: CustomTextStyles
                                    .titleSmallff3a332cSemiBold),
                            TextSpan(
                                text: "Zenith Bank",
                                style:
                                    CustomTextStyles.titleSmallfff7941eSemiBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 17.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Account Number: ",
                                style: CustomTextStyles
                                    .titleSmallff3a332cSemiBold),
                            TextSpan(
                                text: "1015255690",
                                style:
                                    CustomTextStyles.titleSmallfff7941eSemiBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 18.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Account Name: ",
                                style: CustomTextStyles
                                    .titleSmallff3a332cSemiBold),
                            TextSpan(
                                text: "Artisan Oga Ltd",
                                style:
                                    CustomTextStyles.titleSmallfff7941eSemiBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 59.h),
                          child: Text("Or",
                              style: CustomTextStyles
                                  .titleSmallPrimaryContainerSemiBold)),
                      SizedBox(height: 14.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Bank Name: ",
                                style: CustomTextStyles
                                    .titleSmallff3a332cSemiBold),
                            TextSpan(
                                text: "UBA",
                                style:
                                    CustomTextStyles.titleSmallfff7941eSemiBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 16.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Account Number: ",
                                style: CustomTextStyles
                                    .titleSmallff3a332cSemiBold),
                            TextSpan(
                                text: "1020641475",
                                style:
                                    CustomTextStyles.titleSmallfff7941eSemiBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 18.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Account Name: ",
                                style: CustomTextStyles
                                    .titleSmallff3a332cSemiBold),
                            TextSpan(
                                text: "Artisan Oga Ltd",
                                style:
                                    CustomTextStyles.titleSmallfff7941eSemiBold)
                          ]),
                          textAlign: TextAlign.left),
                      Spacer(flex: 24),
                      CustomElevatedButton(
                        text: "Proceed",
                        onPressed: () {},
                      ),
                      Spacer(flex: 75),
                      SizedBox(height: 5.v),
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
        title: AppbarSubtitle(text: "Transfer Method"));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
