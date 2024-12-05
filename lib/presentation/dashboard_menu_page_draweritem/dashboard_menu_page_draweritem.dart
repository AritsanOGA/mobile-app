import 'package:artisan_oga/presentation/welcome_page_screen/welcome_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:page_transition/page_transition.dart';

import '../manage_jobs_page/manage_jobs_page.dart';
import '../payments_made_page_screen/payments_made_page_screen.dart';
import '../../features/settings/presentation/pages/update_profile_page_screen.dart';
import '../view_all_candidates/view_all_candidates.dart';

// ignore_for_file: must_be_immutable
class DashboardMenuPageDraweritem extends StatelessWidget {
  const DashboardMenuPageDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 267.h,
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 82.v,
        ),
        decoration: AppDecoration.outlineBlack900,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgX,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            SizedBox(height: 32.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHome,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "Dashboard",
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 39.v),
            GestureDetector(
              onTap: (() {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: ViewAllCandidatesPageScreen()));
              }),
              child: Padding(
                  padding: EdgeInsets.only(right: 30.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBriefcase,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "Screened Candidates",
                          style: CustomTextStyles.titleSmall15,
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 39.v),
            GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: ManageJobsPage()));
                }),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSend,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "My Jobs",
                        style: CustomTextStyles.titleSmall15,
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 39.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSearchPrimarycontainer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "Messages",
                    style: CustomTextStyles.titleSmall15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 42.v),
            GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: PaymentsMadePageScreen()));
                }),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIcOutlinePayment,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Payments",
                        style: CustomTextStyles.titleSmall15,
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 39.v),
            /*  Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                right: 55.h,
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorPrimarycontainer9x10,
                        height: 9.v,
                        width: 10.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorPrimarycontainer11x18,
                        height: 11.v,
                        width: 18.h,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Text(
                      "Change Password",
                      style: CustomTextStyles.titleSmall15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 41.v),*/
            GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: EmployerProfilePageScreen()));
                }),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserPrimarycontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "View Profile",
                        style: CustomTextStyles.titleSmall15,
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 39.v),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, AppRoutes.welcomePageScreen, (route) => false);
                // Navigator.push(
                //     context,
                //     PageTransition(
                //         type: PageTransitionType.rightToLeft,
                //         child: WelcomePageScreen()));
              },
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 3.v,
                    ),
                    child: Text(
                      "Logout",
                      style: CustomTextStyles.titleSmall15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 39.v),
          ],
        ),
      ),
    );
  }
}
