import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/home/presentation/widgets/js_drawer.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: JSDrawer(),
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.jsNotificationPage);
              },
              icon: Icon(Icons.notifications))
        ],
      ),
      body: Container(
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
                  'Featured Jobs',
                  style: CustomTextStyles.titleLargeff3a332cSemiBold,
                ),
              ),
              SizedBox(height: 25.v),
              BlocBuilder<HomeBloc, HomeState>(
                bloc: context.read<HomeBloc>()..add(HomeEvent.getFeaturedJob()),
                //..add(event),
                builder: (context, state) {
                  if (state.getFeaturedJobState ==
                      GetFeaturedJobState.loading) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (state.getFeaturedJobState ==
                      GetFeaturedJobState.failure) {
                    return Center(child: Text('Error: '));
                  }

                  if (state.featuredJobList.isEmpty) {
                    return Center(child: Text('No items found.'));
                  }

                  return SizedBox(
                    height: 200.h,
                    // width: 400.v,
                    child: ListView.builder(
                      // padding: EdgeInsets.only(left: 10),
                      scrollDirection: Axis.horizontal,

                      itemCount: state.featuredJobList.length,
                      itemBuilder: (context, index) {
                        return FeaturedJobWidget(
                          featuredJobResponseEntity:
                              state.featuredJobList[index],
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
                  'My Jobs',
                  style: CustomTextStyles.titleLargeff3a332cSemiBold,
                ),
              ),
              BlocBuilder<HomeBloc, HomeState>(
                bloc: context.read<HomeBloc>()
                  ..add(HomeEvent.getJobSeekerJobs()),
                //..add(event),
                builder: (context, state) {
                  if (state.getJobSeekerJobState ==
                      GetJobSeekerJobState.loading) {
                    return Center(child: CircularProgressIndicator());
                  }

                  if (state.getJobSeekerJobState ==
                      GetJobSeekerJobState.failure) {
                    return Center(child: Text('Error: '));
                  }

                  if (state.jobSeekerJobList.isEmpty) {
                    return Center(
                      child: Column(
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
                    // width: 400.v,
                    child: ListView.builder(
                      itemCount: state.jobSeekerJobList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,
                                AppRoutes.candidateJobSearchDetailsScreen,
                                arguments:
                                    state.jobSeekerJobList[index].jobIdentity);
                          },
                          child: ListTile(
                            leading: SizedBox(
                              width: 50,
                              height: 50,
                              child: Center(
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage(ImageConstant.jobImage),
                                ),
                              ),
                            ),
                            title: Text(
                              state.jobSeekerJobList[index].jobTitle ?? '',
                              style: CustomTextStyles.titleMediumMedium18,
                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  state.jobSeekerJobList[index].workType ?? '',
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer13,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.kblack),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  state.jobSeekerJobList[index].status == '0'
                                      ? 'Applied'
                                      : state.jobSeekerJobList[index].status ==
                                              '1'
                                          ? 'Screened'
                                          : state.jobSeekerJobList[index]
                                                      .status ==
                                                  '2'
                                              ? 'Rejected'
                                              : state.jobSeekerJobList[index]
                                                          .status ==
                                                      '5'
                                                  ? 'Accepted'
                                                  : '',
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer13,
                                ),
                              ],
                            ),
                            trailing: Icon(Icons.more_vert),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              //  _jobsForYouHeader(context),
              // SizedBox(height: 25.v),
              //  buildJobsForJS(context)
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
}

class FeaturedJobWidget extends StatelessWidget {
  final FeaturedJobResponseEntity featuredJobResponseEntity;
  const FeaturedJobWidget({
    super.key,
    required this.featuredJobResponseEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 10.v,
      ),
      width: MediaQuery.sizeOf(context).width * 0.7,
      margin: EdgeInsets.only(left: 10),
      height: 300,
      decoration: BoxDecoration(
        color: theme.primaryColor,
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 260.h,
          child: Text(
            softWrap: false,
            featuredJobResponseEntity.jobTitle ?? '',
            style: theme.textTheme.titleLarge!.copyWith(
                color: appTheme.gray50,
                fontSize: 23.fSize,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis),
          ),
        ),

        Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              ImageConstant.star,
              width: 15,
            )),
        Text(
          featuredJobResponseEntity.city ?? '',
          style: CustomTextStyles.titleMediumGray50,
        ),
        SizedBox(
          height: 80.h,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.feauredJobDetails,
              arguments: featuredJobResponseEntity,
            );
          },
          child: Row(
            children: [
              Text(
                'Show All',
                style: CustomTextStyles.titleMediumGray50,
              ),
              SizedBox(
                width: 10.h,
              ),
              Icon(
                Icons.arrow_forward,
                color: AppColors.kwhite,
              )
            ],
          ),
        )
        // Text(data[index]["job_title"].toString(),
        //     style: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontSize: 13))
      ]),
    );
  }
}
