import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_login_page_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_sign_uppage_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFFf6f6f6),
        extendBody: true,
        body: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: SizedBox(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.first_screen,
                  alignment: Alignment.bottomCenter,
                ),
                _buildEmployerWelcome(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmployerWelcome(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 34.h,
          vertical: 8.v,
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
                      // width: 234.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Find Work. Find Worker.\n",
                              style: CustomTextStyles.titleLargeff3a332c,
                            ),
                            TextSpan(
                              text: "Fast and Easy.",
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
              text: "Continue as an Employer",
            ),
            SizedBox(height: 25.v),
            CustomElevatedButton(
              onPressed: (() {
                Navigator.pushNamed(context, AppRoutes.jobSearch);
              }),
              text: "Continue as a Job Seeker",
            ),
            SizedBox(height: 30.v),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EmployerLoginPageScreen()),
                );
              }),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account?",
                      style: CustomTextStyles.titleSmallff666666,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "Sign In",
                      style: CustomTextStyles.titleSmallff3a332c,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 40.v),
          ],
        ),
      ),
    );
  }
}
