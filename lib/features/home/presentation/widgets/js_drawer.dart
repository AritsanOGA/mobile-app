import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
                    style: CustomTextStyles.titleLargePrimary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 39.v),
            Row(
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
                    "Activities",
                    style: CustomTextStyles.titleSmall20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 38.v),
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
                    style: CustomTextStyles.titleSmall20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 39.v),
            /*   Padding(
              padding: EdgeInsets.only(right: 55.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLock,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 2.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "Change Password",
                      style: CustomTextStyles.titleSmall20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 39.v),*/
            Row(
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
                    style: CustomTextStyles.titleSmall20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 39.v),

            //SizedBox(height: 39.v),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    context
                        .read<AuthBloc>()
                        .
                        add(const AuthEvent.removeUserData());

                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.jSLoginPageScreen, (route) => false);
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
