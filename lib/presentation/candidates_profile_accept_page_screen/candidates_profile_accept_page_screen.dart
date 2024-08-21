import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import '../candidates_profile_accept_page_screen/widgets/waitering_item_widget.dart';

class CandidatesProfileAcceptPageScreen extends StatelessWidget {
  const CandidatesProfileAcceptPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                    child: Column(children: [
                      SizedBox(height: 26.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(right: 109.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowLeftOnprimary,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 3.v, bottom: 5.v),
                                        onTap: () {
                                          onTapImgArrowLeft(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 93.h),
                                        child: Text("Applicants Profile",
                                            style: theme.textTheme.titleLarge))
                                  ]))),
                      SizedBox(height: 21.v),
                      SizedBox(
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse5,
                                    height: 75.adaptSize,
                                    width: 75.adaptSize,
                                    radius: BorderRadius.circular(37.h),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        margin: EdgeInsets.only(
                                            right: 6.h, bottom: 1.v),
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                            borderRadius:
                                                BorderRadius.circular(6.h),
                                            border: Border.all(
                                                color: appTheme.gray5001,
                                                width: 2.h,
                                                strokeAlign:
                                                    strokeAlignOutside))))
                              ])),
                      SizedBox(height: 8.v),
                      Text("Chloé Scarlett",
                          style: CustomTextStyles.titleLargePrimarySemiBold),
                      SizedBox(height: 10.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgMdiLocation,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 4.h, top: 2.v, bottom: 2.v),
                                child: Text("Ikeja",
                                    style: CustomTextStyles.titleSmall15))
                          ]),
                      SizedBox(height: 12.v),
                      Text("Job Preference: Full_time",
                          style: CustomTextStyles.titleMediumGray700Medium17),
                      SizedBox(height: 14.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCall,
                                height: 17.adaptSize,
                                width: 17.adaptSize,
                                margin: EdgeInsets.only(top: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text("+323 546 967 231 69",
                                    style: CustomTextStyles
                                        .titleSmallPrimarySemiBold))
                          ]),
                      SizedBox(height: 20.v),
                      Container(
                          width: 303.h,
                          margin: EdgeInsets.only(left: 41.h, right: 40.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Chloé Scarlett is a freelance expertise with ",
                                    style: CustomTextStyles.bodyMediumff666666),
                                TextSpan(
                                    text:
                                        "3 years of experience helping her target clients achieve their goals.",
                                    style: CustomTextStyles
                                        .titleSmallfff7941eSemiBold15)
                              ]),
                              textAlign: TextAlign.center)),
                      SizedBox(height: 22.v),
                      Divider(indent: 24.h, endIndent: 24.h),
                      SizedBox(height: 41.v),
                      _buildEducation(context),
                      SizedBox(height: 1.v),
                      Container(
                          height: 14.v,
                          width: 380.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray700.withOpacity(0.18),
                              borderRadius: BorderRadius.circular(2.h))),
                      SizedBox(height: 7.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Supervising",
                                  style: CustomTextStyles
                                      .bodyMediumPrimaryContainer))),
                      SizedBox(height: 1.v),
                      Container(
                          height: 14.v,
                          width: 380.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray700.withOpacity(0.18),
                              borderRadius: BorderRadius.circular(2.h))),
                      SizedBox(height: 7.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Receptionist",
                                  style: CustomTextStyles
                                      .bodyMediumPrimaryContainer))),
                      SizedBox(height: 1.v),
                      Container(
                          height: 14.v,
                          width: 380.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray700.withOpacity(0.18),
                              borderRadius: BorderRadius.circular(2.h))),
                      SizedBox(height: 17.v),
                      _buildReviews(context),
                      SizedBox(height: 20.v),
                      SizedBox(
                          width: 130.h,
                          child: Divider(
                              color: theme.colorScheme.primaryContainer
                                  .withOpacity(1)))
                    ])))));
  }

  /// Section Widget
  Widget _buildEducation(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text("Education",
                        style: CustomTextStyles.titleSmallPrimaryContainer),
                    SizedBox(height: 10.v),
                    Text("Nnamdi Azikiwe University (Botany)",
                        style: CustomTextStyles.bodyMediumPrimary14),
                    SizedBox(height: 18.v),
                    Text("Experience",
                        style: CustomTextStyles.titleSmallPrimaryContainer),
                    SizedBox(height: 8.v),
                    Text("()", style: CustomTextStyles.bodyMediumPrimary14),
                    SizedBox(height: 16.v),
                    Text("Skills",
                        style: CustomTextStyles.titleSmallPrimaryContainer),
                    SizedBox(height: 9.v),
                    Wrap(
                        runSpacing: 6.v,
                        spacing: 6.h,
                        children: List<Widget>.generate(
                            3, (index) => WaiteringItemWidget())),
                    SizedBox(height: 17.v),
                    Text("Skill Endorsement",
                        style: CustomTextStyles.titleSmallPrimaryContainer),
                    SizedBox(height: 10.v),
                    Text("Waitering",
                        style: CustomTextStyles.bodyMediumPrimaryContainer)
                  ])),
              Padding(
                  padding:
                      EdgeInsets.only(left: 49.h, top: 17.v, bottom: 139.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgZondiconsEducation,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    SizedBox(height: 43.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgSubwayBook,
                        height: 20.adaptSize,
                        width: 20.adaptSize)
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Reviews", style: CustomTextStyles.titleSmallPrimaryContainer),
            SizedBox(height: 10.v),
            Text("()", style: CustomTextStyles.bodyMediumPrimary14)
          ]),
          CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbol,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 18.v, bottom: 8.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
