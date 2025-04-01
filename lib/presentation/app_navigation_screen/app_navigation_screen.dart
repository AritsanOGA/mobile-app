import 'package:artisan_oga/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup Options Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signupOptionsPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Options Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginOptionsPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Employer Sign UpPage",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerSignUppageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Employer SignUpPage One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerSignuppageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Successful Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successfulPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Employer Login Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerLoginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "search result page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchResultPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "payments made page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentsMadePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Post Job Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postJobTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Post Job Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postJobThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Post Job Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postJobFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "payment page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "pay with card Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.payWithCardPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Successful",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pay with transfer page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.payWithTransferPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Form transfer page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formTransferPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "form transfer page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.formTransferPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "View Candidates Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewCandidatesPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Accept Reject Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.acceptRejectPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Candidates profile & Accept Page",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.candidatesProfileAcceptPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message Page (Chatting) One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagePageChattingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "change password Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerPasswordChangeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Update Profile Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.updateProfilePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "J-S Create account page Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.jSCreateAccountPageThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "J-S Create account page Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "J-S Create account page Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "J-S Create account page Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "J-S Create account page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "J-S Create account page Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "J-S Create account page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSCreateAccountPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verification Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verificationPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "J-S login page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.jSLoginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "search job result page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchJobResultPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification bar page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationBarPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Apply for Jobs One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.applyForJobsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Apply for Jobs",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.applyForJobsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Activities - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.activitiesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagePageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message Page (Chatting)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messagePageChattingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "change password Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.employerPasswordChangeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Update Profile Page Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.updateProfilePageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Update Profile Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.updateProfilePageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Update Profile Page Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.updateProfilePageThreeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
