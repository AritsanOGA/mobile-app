import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/settings/presentation/pages/activities_tab_container_screen.dart';
import 'package:artisan_oga/features/settings/presentation/pages/js_password_change_screen.dart';
import 'package:artisan_oga/features/settings/presentation/pages/js_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class JSDrawer extends StatelessWidget {
  const JSDrawer({Key? key})
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
                SvgPicture.asset(
                  ImageConstant.imgHome,
                  color: AppColors.kblack,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "Dashboard",
                    style: CustomTextStyles.titleSmall15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 39.v),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: ActivitiesTabContainerScreen()));
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    ImageConstant.imgBriefcase,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "Activities",
                      style: CustomTextStyles.titleSmall20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 38.v),
            Row(
              children: [
                SvgPicture.asset(
                  ImageConstant.imgSearchPrimarycontainer,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "Messages",
                    style: CustomTextStyles.titleSmall20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 39.v),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: JSPasswordChangeScreen()));
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    ImageConstant.lock,
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
            SizedBox(height: 39.v),

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: JSProfilePage()));
              },
              child: Row(
                children: [
                  SvgPicture.asset(
                    ImageConstant.imgUserPrimarycontainer,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "View Profile",
                      style: CustomTextStyles.titleSmall20,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 41.v),
            GestureDetector(
                onTap: (() {
                  // // Navigator.pop(context);
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.rightToLeft,
                  //         child: UpdateProfilePageOneScreen()));
                }),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      ImageConstant.userPlus,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "Update Profile",
                        style: CustomTextStyles.titleSmall15,
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 39.v),

            //SizedBox(height: 39.v),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.removeUserData());

                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.jSLoginPageScreen, (route) => false);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.imgThumbsUp,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 9.h,
                          top: 3.v,
                        ),
                        child: Text(
                          "Logout",
                          style: CustomTextStyles.titleSmall20,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 39.v),
          ],
        ),
      ),
    );
  }
}
