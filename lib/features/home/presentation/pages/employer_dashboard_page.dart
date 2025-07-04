import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/core/utils/app_formatter.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/post_job_one_page.dart';
import 'package:artisan_oga/features/home/presentation/widgets/employer_drawer.dart';
import 'package:artisan_oga/features/home/presentation/widgets/employer_job_widget.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../core/services/default.dart';
import '../../../../shared/widgets/custom_outlined_button.dart';
import '../widgets/userprofilelist_item_widget.dart';

class EmployerDashboardPage extends StatefulWidget {
  @override
  _EmployerDashboardPageState createState() => _EmployerDashboardPageState();
}

class _EmployerDashboardPageState extends State<EmployerDashboardPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EmployerDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 52.h,
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child:
                        SvgPicture.asset("assets/images/Vectorsvg_menu.svg")),
              ),
            );
          },
        ),
        actions: [],
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Welcome back, ",
                          style: CustomTextStyles.titleLargeff3a332cSemiBold,
                        ),
                        TextSpan(
                          text:
                              '${UserService().authData?.user.fullName?.split(" ")[0] ?? ''}',
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
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Featured Candidates",
                  style: CustomTextStyles.titleMediumPrimaryContainer18,
                ),
              ),
              BlocBuilder<HomeBloc, HomeState>(
                bloc: context.read<HomeBloc>()
                  ..add(HomeEvent.getFeaturedCandidates()),
                //..add(event),
                builder: (context, state) {
                  if (state.getFeaturedCandidateState ==
                      GetFeaturedCandidateState.loading) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (state.getFeaturedCandidateState ==
                      GetFeaturedCandidateState.failure) {
                    return Center(child: Text('Error: '));
                  }

                  if (state.featureCandidateList.isEmpty) {
                    return Center(child: Text('No items found.'));
                  }

                  return SizedBox(
                    height: 200.h,
                    // width: 400.v,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.featureCandidateList.length,
                      itemBuilder: (context, index) {
                        return UserprofilelistItemWidget(
                          image: state.featureCandidateList[index].profileImage,
                          fullName: state.featureCandidateList[index].fullName,
                          phone: state.featureCandidateList[index].role,
                          availability:
                              state.featureCandidateList[index].availability,
                          city: state.featureCandidateList[index].city,
                          identityId:
                              state.featureCandidateList[index].identity,
                        );
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Job History",
                  style: CustomTextStyles.titleMediumPrimaryContainer18,
                ),
              ),
              BlocBuilder<HomeBloc, HomeState>(
                bloc: context.read<HomeBloc>()..add(HomeEvent.getEmployerJob()),
                //..add(event),
                builder: (context, state) {
                  if (state.getEmployerJobState ==
                      GetEmployerJobState.loading) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (state.getEmployerJobState ==
                      GetEmployerJobState.failure) {
                    return Center(child: Text('Error: '));
                  }

                  if (state.employerJobList.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 150.h,
                          ),
                          Text(
                            'No Job History',
                            style:
                                CustomTextStyles.titleMediumPrimaryContainer18,
                          ),
                        ],
                      ),
                    );
                  }

                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.employerJobList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.jobHistoryDetails,
                              arguments: state.employerJobList[index],
                            );
                          },
                          child: EmployerJobWidget(
                              employerJobResponseEntity:
                                  state.employerJobList[index],
                              jobTitle:
                                  state.employerJobList[index].jobTitle ?? '',
                              hireType:
                                  state.employerJobList[index].hireType ?? '',
                              location: state.employerJobList[index].city ?? '',
                              applicationDeadline: state.employerJobList[index]
                                      .applicationDeadline ??
                                  '',
                              amount: state.employerJobList[index].minSalary
                                  .toString(),
                              dateCreated: getTimeAgo(
                                  state.employerJobList[index].createdAt!)),
                        );
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 25.v),
            ],
          ),
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

  Widget buildRecentJobs(BuildContext context) {
    return Expanded(
        child: FutureBuilder<dynamic>(
            future: Default().getEmployerJobs(''
                // employer_info["data"]["id"].toString()
                ),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasData) {
                final data = snapshot.data!;

                if (snapshot.data.length > 0) {
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
                                    data[index]["state"],
                                    data[index]["hire_type"]),
                                SizedBox(height: 21.v),
                                Padding(
                                    padding: EdgeInsets.only(),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgOiPeople,
                                          height: 21.adaptSize,
                                          width: 21.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.h, top: 3.v),
                                          child: Text("0 applicants",
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
                                              color: theme.colorScheme
                                                  .secondaryContainer
                                                  .withOpacity(1),
                                              borderRadius:
                                                  BorderRadius.circular(2.h))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.h, top: 2.v),
                                          child: Text("1 views",
                                              style: CustomTextStyles
                                                  .titleSmallSecondaryContainer))
                                    ])),
                                SizedBox(height: 21.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: _buildPackageFreeRow(context,
                                        packageFree: "Package: Free")),
                                SizedBox(height: 23.v),
                                Container(
                                  width: double.maxFinite,
                                  child: Row(
                                    children: [
                                      CustomOutlinedButton(
                                          onPressed: (() {
                                            // Navigator.push(
                                            //     context,
                                            //     PageTransition(
                                            //         type: PageTransitionType
                                            //             .topToBottom,
                                            //         child:
                                            //             ViewCandidatesPageScreen(
                                            //                 job_id: data[index]
                                            //                         ["id"]
                                            //                     .toString())));
                                          }),
                                          width: 153.h,
                                          text: "View Applicants",
                                          margin: EdgeInsets.only(left: 4.h)),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CustomOutlinedButton(
                                          onPressed: (() {
                                            // Navigator.push(
                                            //     context,
                                            //     PageTransition(
                                            //         type: PageTransitionType
                                            //             .topToBottom,
                                            //         child:
                                            //             ViewCandidatesPageScreen(
                                            //                 job_id: data[index]
                                            //                         ["id"]
                                            //                     .toString())));
                                          }),
                                          width: 153.h,
                                          text: "Edit Job",
                                          margin: EdgeInsets.only(left: 4.h)),
                                    ],
                                  ),
                                ),
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
                                        "You must be skilled and intelligent minded person",
                                        style: CustomTextStyles
                                            .bodyMediumPrimaryContainer)),
                                SizedBox(height: 18.v),
                                Divider(indent: 4.h, endIndent: 6.h),
                              ])); // Replace with your own widget
                    },
                  );
                } else {
                  return Center(
                    child: Column(
                      children: [
                        Text("You have not created any jobs yet"),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Durations.long1,
                                    child: PostJobOnePage()));

                            // Action to perform when the button is pressed
                            print('Orange button pressed!');
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.orange, // Text color
                            elevation: 4, // Elevation (shadow)
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Button border radius
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 30), // Button padding
                          ),
                          child: Text(
                            'Add New Job',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              } else {
                return Center(
                  child: Text("An error occured please refresh and try again"),
                );
              }
            }));
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
                                  style: TextStyle(color: Colors.green)),
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

  /// Section Widget
  Widget _buildFeaturedCandidatesRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "Featured Candidates",
              style: CustomTextStyles.titleMediumPrimaryContainer18,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context, var data) {
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
            return null;

            // return UserprofilelistItemWidget(
            //     fullName: data[index]["full_name"],
            //     phone: data[index]["phone"]);
          },
        ),
      ),
    );
  }
}
