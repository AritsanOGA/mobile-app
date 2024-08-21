import 'package:artisan_oga/presentation/nav_draweritem/nav_draweritem.dart';
import 'package:artisan_oga/presentation/post_job_one_page/post_job_one_page.dart';
import 'package:artisan_oga/presentation/settings_page_one_screen/settings_page_one_screen.dart';
import 'package:artisan_oga/presentation/view_candidates_page_screen/view_candidates_page_screen.dart';
import 'package:artisan_oga/services/candidates.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/widgets/app_bar/appbar_trailing_image.dart';
import 'package:artisan_oga/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/widgets/custom_search_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import '../../core/utils/format_text.dart';
import '../../services/default.dart';
import '../../widgets/custom_outlined_button.dart';
import '../dashboard_menu_page_draweritem/dashboard_menu_page_draweritem.dart';
import '../settings_page_two_screen/settings_page_two_screen.dart';
import '../view_all_candidates/view_all_candidates.dart';

//jobs seeker dashboard
// ignore_for_file: must_be_immutable
class SearchScreenPage extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreenPage> {
  TextEditingController searchController = TextEditingController();

  var jobseekerInfo = Hive.box("artisan").get("jobseeker_user_data");
  TextEditingController _searchController = TextEditingController();
  var _jobsSearched = [];
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: DashboardMenuPageDraweritem(),
      bottomNavigationBar: bottomNav(context),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: 25.h),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Search For  ",
                  style: CustomTextStyles.titleLargeff3a332cSemiBold,
                ),
                TextSpan(
                  text: "Jobs",
                  style: CustomTextStyles.titleLargefff7941e,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        actions: [],
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            _jobsForYouHeader(context),
            SizedBox(
              height: 20,
            ),
            _jobsSearched.length > 0
                ? buildJobsForJS(context)
                : Center(
                    child: Text(
                      "Use the search box to search for jobs.\nEg (receptionist)",
                      textAlign: TextAlign.center,
                    ),
                  )
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
          TextField(
            textInputAction: TextInputAction.search,
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onChanged: (value) {
              // Perform search or filter functionality based on the search text
              print('Search text: $value');
            },
            onSubmitted: (value) async {
              // Perform the search operation when the user taps the "Search" button

              Candidates().searchJobs(_searchController.text).then((value) {
                if (value.length > 0) {
                  setState(() {
                    _jobsSearched = value;
                  });
                }
              });

              // Add your search logic here
            },
          ),
        ],
      ),
    );
  }

  Widget buildJobsForJS(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: _jobsSearched.length, // Display the widget 4 times
      itemBuilder: (context, index) {
        var data = _jobsSearched[index];
        return isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 2.h, right: 112.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [])),
                      SizedBox(height: 29.v),
                      _buildJobInformation(
                          context,
                          data["job_title"],
                          data["basic_salary"],
                          data["status"],
                          data["industry"]),
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
                          child: Text(removeHtmlTags(data["job_description"]),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.bodyMediumPrimaryContainer)),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Posted By:",
                              style: CustomTextStyles
                                  .titleMediumPrimaryContainerMedium_1)),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(data["industry"],
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.orange))),
                      SizedBox(height: 23.v),
                      CustomOutlinedButton(
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ViewCandidatesPageScreen(
                                          job_id: data["id"].toString())),
                            );
                          }),
                          width: 153.h,
                          text: "Apply",
                          margin: EdgeInsets.only(left: 4.h)),
                      SizedBox(height: 10.v),
                      Divider(indent: 4.h, endIndent: 6.h),
                    ])); // Replace with your own widget
      },
    ));
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
