import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';

class SettingsPageOneScreen extends StatefulWidget {
  SettingsPageOneScreen({Key? key}) : super(key: key);

  @override
  _SettingsPageOneScreenState createState() => _SettingsPageOneScreenState();
}

class _SettingsPageOneScreenState extends State<SettingsPageOneScreen> {
  var employer_info = Hive.box("artisan").get("employer_user_data");

  var js_info = Hive.box("artisan").get("jobseeker_user_data");

  var userRole = Hive.box("artisan").get("user_role");

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
            /*  Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(children: [
                  SvgPicture.asset(
                    "assets/images/lock-keyhole-minimalistic-svgrepo-com.svg",
                    height: 22.v,
                    width: 16.h,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 19.h, top: 2.v),
                      child: Text("Change Password",
                          style: TextStyle(fontSize: 18)))
                ])),*/
            //  SizedBox(height: 30.v),
            Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Row(children: [
                  SvgPicture.asset("assets/images/edit-user-6-svgrepo-com.svg",
                      height: 22.adaptSize, width: 22.adaptSize),
                  Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text("Update Profile",
                          style: TextStyle(fontSize: 18)))
                ])),
            SizedBox(height: 31.v),
            Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Row(children: [
                  SvgPicture.asset("assets/images/logout-2-svgrepo-com.svg",
                      height: 22.adaptSize, width: 22.adaptSize),
                  Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text("Log out", style: TextStyle(fontSize: 18)))
                ])),
            SizedBox(height: 5.v)
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
                              Text(
                                  userRole == "Employer"
                                      ? employer_info["data"]["full_name"]
                                          .toString()
                                          .toUpperCase()
                                      : js_info["data"]["full_name"]
                                          .toString()
                                          .toUpperCase(),
                                  style: CustomTextStyles.titleLargePrimary),
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
