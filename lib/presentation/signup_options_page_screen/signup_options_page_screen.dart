import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_sign_uppage_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignupOptionsPageScreen extends StatelessWidget {
  const SignupOptionsPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        height: 879.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle1,
              height: 568.v,
              width: 430.h,
              alignment: Alignment.topCenter,
            ),
            _buildEmployerWelcome(context),
          ],
        ),
      ),
    );
  }

  Widget _buildEmployerWelcome(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 34.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillGray5001.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL37,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 73.v,
              width: 246.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      width: 234.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Unlock your ",
                              style: CustomTextStyles.titleLargeff3a332c,
                            ),
                            TextSpan(
                              text: "potential.",
                              style: CustomTextStyles.titleLargeff3a332c,
                            ),
                            TextSpan(
                              text: " Find the perfect fit.",
                              style: CustomTextStyles.titleLargeff3a332c,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBxsHardHat,
                    height: 31.adaptSize,
                    width: 31.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            Container(
              width: 344.h,
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              child: Text(
                "Connecting Talent with Opportunity: Your Next Career Move Starts Here",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumGray700_1,
              ),
            ),
            SizedBox(height: 48.v),
            CustomElevatedButton(
              onPressed: (() {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: EmployerSignUpPageScreen()));
              }),
              text: "Register as an Employer",
            ),
            SizedBox(height: 25.v),
            CustomElevatedButton(
              onPressed: (() {
                Navigator.pushNamed(context, AppRoutes.jobSearch);
              }),
              text: "Register as a job seeker",
            ),
            SizedBox(height: 30.v),
          ],
        ),
      ),
    );
  }
}
