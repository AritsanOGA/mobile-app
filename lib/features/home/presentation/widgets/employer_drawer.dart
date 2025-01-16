import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

// ignore_for_file: must_be_immutable
class EmployerDrawer extends StatelessWidget {
  const EmployerDrawer({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
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
                GestureDetector(
                  onTap: () {
                    //       context.read<AuthBloc>().add(AuthEvent.selectTab(index));
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.imgHome,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 4.v,
                        ),
                        child: Text(
                          "Dashboard",
                          style: CustomTextStyles.titleSmallPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 39.v),
                GestureDetector(
                  onTap: (() {
                    // Navigator.pop(context);
                    // Navigator.push(
                    //     context,
                    //     PageTransition(
                    //         type: PageTransitionType.rightToLeft,
                    //         child: ViewAllCandidatesPageScreen()));
                  }),
                  child: Padding(
                      padding: EdgeInsets.only(right: 30.h),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            ImageConstant.imgBriefcase,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "Screened Candidates",
                              style: CustomTextStyles.titleSmall15,
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 39.v),
                GestureDetector(
                    onTap: (() {
                      // Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeft,
                      //         child: ManageJobsPage()));
                    }),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          ImageConstant.imgSend,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "My Jobs",
                            style: CustomTextStyles.titleSmall15,
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 39.v),
                Row(
                  children: [
                    SvgPicture.asset(
                      ImageConstant.imgSearchPrimarycontainer,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "Messages",
                        style: CustomTextStyles.titleSmall15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 42.v),
                GestureDetector(
                    onTap: (() {
                      // Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeft,
                      //         child: PaymentsMadePageScreen()));
                    }),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          ImageConstant.imgIcOutlinePayment,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "Payments",
                            style: CustomTextStyles.titleSmall15,
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 39.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    right: 55.h,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.lock,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Text(
                          "Change Password",
                          style: CustomTextStyles.titleSmall15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 41.v),
                GestureDetector(
                    onTap: (() {
                      // Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeft,
                      //         child: EmployerProfilePageScreen()));
                    }),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          ImageConstant.imgUserPrimarycontainer,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "View Profile",
                            style: CustomTextStyles.titleSmall15,
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 41.v),
                GestureDetector(
                    onTap: (() {
                      // Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeft,
                      //         child: EmployerProfilePageScreen()));
                    }),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          ImageConstant.userPlus,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "Update Profile",
                            style: CustomTextStyles.titleSmall15,
                          ),
                        ),
                      ],
                    )),
                SizedBox(height: 39.v),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        print('ghh');
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.removeUserData());

                        Navigator.pushNamedAndRemoveUntil(
                            context,
                            AppRoutes.employerLoginPageScreen,
                            (route) => false);
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            ImageConstant.imgThumbsUp,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 9.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "Logout",
                              style: CustomTextStyles.titleSmall15,
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
      },
    );
  }
}
