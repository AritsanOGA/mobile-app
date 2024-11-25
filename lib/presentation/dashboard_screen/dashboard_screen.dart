import 'package:artisan_oga/presentation/apply_for_jobs_screen/apply_for_jobs_screen.dart';
import 'package:artisan_oga/core/services/candidates.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import '../../core/utils/app_formatter.dart';
import '../../core/services/default.dart';
import '../../shared/widgets/custom_outlined_button.dart';
import '../search_screen/search_screen.dart';
import '../settings_page_two_screen/settings_page_two_screen.dart';

//jobs seeker dashboard
// ignore_for_file: must_be_immutable
class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  TextEditingController searchController = TextEditingController();

  //var jobseekerInfo = Hive.box("artisan").get("jobseeker_user_data");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: DashboardMenuPageDraweritem(),
      bottomNavigationBar: bottomNav(context),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 52.h,
        leading: SizedBox(),
        /*  leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child:
                        SvgPicture.asset("assets/images/Vectorsvg_menu.svg")),
              ),
            );
          },
        ),*/
        actions: [],
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 5.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome back, ",
                        style: CustomTextStyles.titleLargeff3a332cSemiBold,
                      ),
                      TextSpan(
                        text:'hi',
                        // jobseekerInfo["data"]["full_name"],
                        style: CustomTextStyles.titleLargefff7941e,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 19.v),
            SizedBox(height: 25.v),
            _jobsForYouHeader(context),
            SizedBox(height: 25.v),
            buildJobsForJS(context)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: 52.h,
      leading: GestureDetector(
        onTap: (() {}),
        child: AppbarLeadingImage(
          imagePath: ImageConstant.imgJamMenuIcon,
          margin: EdgeInsets.only(
            left: 19.h,
            top: 11.v,
            bottom: 11.v,
          ),
        ),
      ),
      actions: [],
    );
  }

  /// Section Widget
  Widget _buildJobInformation(
      BuildContext context, String jobTitle, salary, status, companyName) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 6.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 57.v,
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
                    Text("Salary:  ${salary != null ? salary : '--'}",
                        style: CustomTextStyles.titleSmallGray50001),
                    SizedBox(height: 1.v),
                    SizedBox(
                        width: 201.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(status == "1" ? "ACTIVE" : "EXPIRED",
                                  style: TextStyle(color: Colors.green)),
                              Text("Posted 3mins ago",
                                  style: CustomTextStyles
                                      .titleSmallSecondaryContainer)
                            ]))
                  ])),
          Spacer(),
        ]));
  }

  /// Section Widget
  Widget _jobsForYouHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.maxFinite,
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Jobs For You",
            style: CustomTextStyles.titleMediumPrimaryContainer18,
          ),
          SizedBox(height: 10),
          Text(
            "Jobs you have been matched with",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJobProfileList(BuildContext context, var data) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 230.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 25.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.sizeOf(context).width * 0.7,
              padding: EdgeInsets.all(10),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 225, 225, 224).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Job title",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13)),
                    SizedBox(
                      height: 8,
                    ),
                    Text(data[index]["job_title"].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13))
                  ]),
            );
          },
        ),
      ),
    );
  }

  Widget buildJobsForJS(BuildContext context) {
    return Expanded(
        child: FutureBuilder<dynamic>(
            future: Candidates().getJobsForYou("5252"),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasData) {
                final data = snapshot.data!;

                if (data.length > 0) {
                  return ListView.builder(
                    itemCount: data.length, // Display the widget 4 times
                    itemBuilder: (context, index) {
                      return Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 2.h, right: 112.h),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [])),
                                SizedBox(height: 29.v),
                                _buildJobInformation(
                                    context,
                                    data[index]["job_title"],
                                    data[index]["basic_salary"],
                                    data[index]["status"],
                                    data[index]["industry"]),
                                SizedBox(height: 21.v),
                                Padding(
                                    padding: EdgeInsets.only(),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgOiPeople,
                                          height: 21.adaptSize,
                                          width: 21.adaptSize),
                                    ])),
                                SizedBox(height: 23.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("Job Description",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainerMedium_1)),
                                SizedBox(height: 7.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                        removeHtmlTags(
                                            data[index]["job_description"]),
                                        //  maxLines: 4,
                                        // overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumPrimaryContainer)),
                                SizedBox(height: 18.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text("Posted By:",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainerMedium_1)),
                                SizedBox(height: 10.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(data[index]["industry"],
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            TextStyle(color: Colors.orange))),
                                SizedBox(height: 23.v),
                                CustomOutlinedButton(
                                    onPressed: (() {
                                      EasyLoading.show();
                                      Default()
                                          .applyForJob(
                                              user_id: '',
                                              // jobseekerInfo["data"]
                                              //         ["id"]
                                              //     .toString(),
                                              job_id:
                                                  data[index]["id"].toString())
                                          .then((value) => {
                                                if (value == "success")
                                                  {
                                                    EasyLoading.dismiss(),
                                                    Fluttertoast.showToast(
                                                        msg:
                                                            "Job application successful",
                                                        toastLength:
                                                            Toast.LENGTH_SHORT,
                                                        gravity:
                                                            ToastGravity.CENTER,
                                                        timeInSecForIosWeb: 1,
                                                        backgroundColor:
                                                            const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    86,
                                                                    86,
                                                                    86)
                                                                .withOpacity(
                                                                    0.6),
                                                        textColor: Colors.white,
                                                        fontSize: 16.0),
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ApplyForJobsScreen()),
                                                    )
                                                  }
                                                else
                                                  {
                                                    EasyLoading.dismiss(),
                                                    Fluttertoast.showToast(
                                                        msg: value,
                                                        toastLength:
                                                            Toast.LENGTH_SHORT,
                                                        gravity:
                                                            ToastGravity.CENTER,
                                                        timeInSecForIosWeb: 1,
                                                        backgroundColor:
                                                            const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    86,
                                                                    86,
                                                                    86)
                                                                .withOpacity(
                                                                    0.6),
                                                        textColor: Colors.white,
                                                        fontSize: 16.0),
                                                  }
                                              });
                                    }),
                                    width: 153.h,
                                    text: "Apply For Job",
                                    margin: EdgeInsets.only(left: 4.h)),
                                SizedBox(height: 10.v),
                                Divider(indent: 4.h, endIndent: 6.h),
                              ])); // Replace with your own widget
                    },
                  );
                } else {
                  return Center(
                    child: Text(
                      "You have not been matched with any jobs",
                      style: TextStyle(color: Colors.orange),
                    ),
                  );
                }
              } else {
                return Center(
                  child: Text(
                    "An error occured. Please refresh",
                    style: TextStyle(color: Colors.orange),
                  ),
                );
              }
            }));
  }

  Widget bottomNav(context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      backgroundColor: Color.fromARGB(255, 65, 44, 37),

      onTap: ((index) {
        if (index == 1) {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.bottomToTop,
                  child: SearchScreenPage(
                      //  job_id: "",
                      )));
        }

        if (index == 2) {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.bottomToTop,
                  child: SettingsPageTwoScreen()));
        }
      }),
      items: <BottomNavigationBarItem>[
        //  mainAxisSize: MainAxisSize.max,
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        BottomNavigationBarItem(
          backgroundColor: Color(0xFF3A332C),
          icon: SvgPicture.asset(
              "assets/images/solar_home-angle-2-outlinehome_icon.svg"),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
              "assets/images/search-alt-1-svgrepo-com (1).svg"),
          label: 'Search',
        ),

        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/Groupsettings.svg"),
          label: 'Settings',
        ),
      ],
      // Add additional properties as needed, such as currentIndex, onTap, etc.
    );
  }
}
