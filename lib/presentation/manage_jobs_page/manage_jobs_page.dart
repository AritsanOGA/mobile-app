import 'package:artisan_oga/presentation/view_candidates_page_screen/view_candidates_page_screen.dart';
import 'package:artisan_oga/services/default.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/widgets/custom_outlined_button.dart';
import 'package:hive/hive.dart';

class ManageJobsPage extends StatefulWidget {
  @override
  _ManageJobsPageState createState() => _ManageJobsPageState();
}

class _ManageJobsPageState extends State<ManageJobsPage> {
  var employer_info = Hive.box("artisan").get("employer_user_data");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("Your Jobs")),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  SizedBox(height: 38.v),
                  Expanded(
                      child: FutureBuilder<dynamic>(
                          future: Default().getEmployerJobs(
                              employer_info["data"]["id"].toString()),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(child: CircularProgressIndicator());
                            }

                            if (snapshot.hasData) {
                              final data = snapshot.data!;

                              return ListView.builder(
                                itemCount:
                                    data.length, // Display the widget 4 times
                                itemBuilder: (context, index) {
                                  return Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 2.h, right: 112.h),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [])),
                                            SizedBox(height: 29.v),
                                            _buildJobInformation(
                                                context,
                                                data[index]["job_title"],
                                                data[index]["state"],
                                                data[index]["hire_type"]),
                                            SizedBox(height: 21.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgOiPeople,
                                                      height: 21.adaptSize,
                                                      width: 21.adaptSize),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h, top: 3.v),
                                                      child: Text(
                                                          "0 applicants",
                                                          style: CustomTextStyles
                                                              .titleSmallPrimaryContainer_1)),
                                                  Container(
                                                      height: 4.adaptSize,
                                                      width: 4.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 10.h,
                                                          top: 9.v,
                                                          bottom: 8.v),
                                                      decoration: BoxDecoration(
                                                          color: theme
                                                              .colorScheme
                                                              .secondaryContainer
                                                              .withOpacity(1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      2.h))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h, top: 2.v),
                                                      child: Text("1 views",
                                                          style: CustomTextStyles
                                                              .titleSmallSecondaryContainer))
                                                ])),
                                            SizedBox(height: 21.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: _buildPackageFreeRow(
                                                    context,
                                                    packageFree:
                                                        "Package: Free")),
                                            SizedBox(height: 23.v),
                                            CustomOutlinedButton(
                                                onPressed: (() {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ViewCandidatesPageScreen(
                                                                job_id: data[
                                                                            index]
                                                                        ["id"]
                                                                    .toString())),
                                                  );
                                                }),
                                                width: 153.h,
                                                text: "View Applicants",
                                                margin:
                                                    EdgeInsets.only(left: 4.h)),
                                            SizedBox(height: 23.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text("Job Description",
                                                    style: CustomTextStyles
                                                        .titleMediumPrimaryContainerMedium_1)),
                                            SizedBox(height: 7.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text(
                                                    "You must be skilled and intelligent minded person",
                                                    style: CustomTextStyles
                                                        .bodyMediumPrimaryContainer)),
                                            SizedBox(height: 18.v),
                                            Divider(
                                                indent: 4.h, endIndent: 6.h),
                                          ])); // Replace with your own widget
                                },
                              );
                            } else {
                              return SizedBox();
                            }
                          }))
                ]))));
  }

  /// Section Widget
  Widget _buildJobInformation(
      BuildContext context, String jobTitle, location, jobType) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 6.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 57.v,
              width: 56.h,
              margin: EdgeInsets.only(bottom: 6.v),
              padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.v),
              decoration: BoxDecoration(),
              child: CustomImageView(
                  imagePath: "assets/images/job-info-svgrepo-com.png",
                  height: 39.v,
                  width: 42.h,
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 5.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(jobTitle,
                        style: CustomTextStyles.titleMediumSecondaryContainer),
                    Text(
                        "${location != null ? location : '--'} (${jobType != null ? jobType : '--'})",
                        style: CustomTextStyles.titleSmallGray50001),
                    SizedBox(height: 1.v),
                    SizedBox(
                        width: 201.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Active",
                                  style:
                                      CustomTextStyles.titleSmallLightgreen900),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMingcuteQuestionFill,
                                  height: 18.adaptSize,
                                  width: 18.adaptSize),
                              Container(
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 7.v),
                                  decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme.secondaryContainer
                                          .withOpacity(1),
                                      borderRadius:
                                          BorderRadius.circular(2.h))),
                              Text("Posted 3mins ago",
                                  style: CustomTextStyles
                                      .titleSmallSecondaryContainer)
                            ]))
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgHumbleiconsPencil,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 17.v, bottom: 23.v))
        ]));
  }

  /// Common widget
  Widget _buildPackageFreeRow(
    BuildContext context, {
    required String packageFree,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgFluentMdl2PostUpdate,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 7.h, top: 3.v, bottom: 3.v),
          child: Text(packageFree,
              style: CustomTextStyles.titleSmallPrimaryContainer_1.copyWith(
                  color: theme.colorScheme.primaryContainer.withOpacity(1))))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
