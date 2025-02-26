import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/presentation/activities_page/activities_page.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/custom_appbar.dart';

class ActivitiesTabContainerScreen extends StatefulWidget {
  const ActivitiesTabContainerScreen({Key? key}) : super(key: key);

  @override
  ActivitiesTabContainerScreenState createState() =>
      ActivitiesTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ActivitiesTabContainerScreenState
    extends State<ActivitiesTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Activities',
            ),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 13.v),
                  _buildEightyFour(context),
                  SizedBox(height: 21.v),
                  Container(
                      height: 39.v,
                      width: 333.h,
                      child: TabBar(
                          controller: tabviewController,
                          labelPadding: EdgeInsets.zero,
                          labelColor: appTheme.gray50,
                          labelStyle: TextStyle(
                              fontSize: 16.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500),
                          unselectedLabelColor:
                              theme.colorScheme.primaryContainer.withOpacity(1),
                          unselectedLabelStyle: TextStyle(
                              fontSize: 16.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500),
                          indicator: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(13.h)),
                          tabs: [
                            Tab(child: Text("All Status")),
                            Tab(child: Text("Applied")),
                            Tab(child: Text("Interviewing"))
                          ])),
                  Expanded(
                      //     height: 531.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                        ActivitiesPage(),
                        ActivitiesPage(),
                        ActivitiesPage()
                      ]))
                ]))));
  }

  Widget _buildEightyFour(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Container(
            height: 197.v,
            width: 380.h,
            decoration: AppDecoration.orange
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Stack(children: [
              Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: 199.h,
                          margin: EdgeInsets.only(left: 20.h, top: 30.v),
                          child: Text(
                              "Get tips for getting your Dream Job to work in Canada",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.titleMediumGray50Bold17))),
                ],
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColors.kwhite,
                      borderRadius: BorderRadius.circular(10)
                      // border: Border.all(color: AppColors.)
                      ),
                  child: Text(
                    'Apply now',
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              CustomImageView(
                  imagePath: ImageConstant.img9ebdc45a3e7a600,
                  height: 197.v,
                  width: 296.h,
                  radius: BorderRadius.circular(16.h),
                  alignment: Alignment.centerRight)
            ])));
  }
}
