import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_subtitle.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/shared/widgets/custom_bottom_bar.dart';
import 'widgets/userlist_item_widget.dart';
import 'widgets/userprofile3_item_widget.dart';

// ignore_for_file: must_be_immutable
class MessagePageOneScreen extends StatelessWidget {
  MessagePageOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildUserList(context),
                    SizedBox(height: 23.v),
                    _buildUserProfile(context),
                    SizedBox(height: 21.v),
                    _buildWidget(context)
                  ])))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 36.h, right: 24.h),
                child: _buildBottomBar(context))));
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
        title: AppbarSubtitle(text: "Chat"));
  }

  /// Section Widget
  Widget _buildUserList(BuildContext context) {
    return SizedBox(
        height: 81.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 38.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 27.h);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return UserlistItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 21.v);
            },
            itemCount: 8,
            itemBuilder: (context, index) {
              return Userprofile3ItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return SizedBox(
        height: 91.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse26,
              height: 54.adaptSize,
              width: 54.adaptSize,
              radius: BorderRadius.circular(27.h),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 25.h)),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle12,
              height: 78.v,
              width: 430.h,
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
