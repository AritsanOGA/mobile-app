import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/presentation/awards/view.dart';
import 'package:artisan_oga/presentation/education/view.dart';
import 'package:artisan_oga/presentation/experience/view.dart';
import 'package:artisan_oga/presentation/update_profile_page_one_screen/update_profile_page_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class SettingsPageTwoScreen extends StatefulWidget {
  SettingsPageTwoScreen({Key? key}) : super(key: key);

  @override
  _SettingsPageTwoScreenState createState() => _SettingsPageTwoScreenState();
}

class _SettingsPageTwoScreenState extends State<SettingsPageTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Settings"),
      ),
      body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 38.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 20.v),
            _buildUserBio(context),
            SizedBox(height: 24.v),
            Divider(indent: 3.h, endIndent: 4.h),
            SizedBox(height: 27.v),
            /*
            Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(children: [
                  SvgPicture.asset(
                    "assets/images/lock-keyhole-minimalistic-svgrepo-com.svg",
                    height: 21.v,
                    width: 16.h,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 19.h, top: 2.v),
                      child: Text("Change Password",
                          style: CustomTextStyles
                              .titleMediumPrimaryContainerMedium_1))
                ])),

         */
            SizedBox(height: 30.v),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Durations.long1,
                        child: UpdateProfilePageOneScreen()));
              }),
              child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(children: [
                    SvgPicture.asset(
                        "assets/images/edit-user-6-svgrepo-com.svg",
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Text("Update Profile",
                            style: CustomTextStyles
                                .titleMediumPrimaryContainerMedium_1))
                  ])),
            ),
            SizedBox(height: 15.v),
            Divider(),
            SizedBox(height: 31.v),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewAwardsPage()),
                );
              }),
              child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(children: [
                    SvgPicture.asset("assets/images/trophy-svgrepo-com.svg",
                        height: 22.adaptSize, width: 22.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text("View Awards",
                            style: CustomTextStyles
                                .titleMediumPrimaryContainerMedium_1))
                  ])),
            ),
            SizedBox(height: 15.v),
            Divider(),
            SizedBox(height: 31.v),
            GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewExperiencePage()),
                  );
                }),
                child: Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(children: [
                      SvgPicture.asset(
                          "assets/images/newspaper-jobs-svgrepo-com.svg",
                          height: 22.adaptSize,
                          width: 22.adaptSize),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text("View Experience",
                              style: CustomTextStyles
                                  .titleMediumPrimaryContainerMedium_1))
                    ]))),
            SizedBox(height: 15.v),
            Divider(),
            SizedBox(height: 31.v),
            GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewEducationPage()),
                  );
                }),
                child: Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(children: [
                      SvgPicture.asset(
                          "assets/images/diploma-diploma-svgrepo-com.svg",
                          height: 22.adaptSize,
                          width: 22.adaptSize),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text("View Education",
                              style: CustomTextStyles
                                  .titleMediumPrimaryContainerMedium_1))
                    ]))),
            SizedBox(height: 15.v),
            Divider(),
            SizedBox(height: 31.v),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return GestureDetector(
                    onTap: (() {
                      context
                          .read<AuthBloc>()
                          .add(const AuthEvent.removeUserData());

                      Navigator.pushNamedAndRemoveUntil(context,
                          AppRoutes.jSLoginPageScreen, (route) => false);
                    }),
                    child: Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(children: [
                          SvgPicture.asset(
                              "assets/images/logout-2-svgrepo-com.svg",
                              height: 22.adaptSize,
                              width: 22.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Text("Log out",
                                  style: CustomTextStyles
                                      .titleMediumPrimaryContainerMedium_1))
                        ])));
              },
            ),
            SizedBox(height: 15.v)
          ])),
    ));
  }

  /// Section Widget
  Widget _buildUserBio(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              width: 230.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //     userRole == "Employer"
                              //         ? employer_info["data"]["name"].toString()
                              //         : js_info["data"]["full_name"].toString(),
                              //     style: CustomTextStyles.titleLargePrimary),
                            ]))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgPrinter,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(top: 24.v, bottom: 15.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
