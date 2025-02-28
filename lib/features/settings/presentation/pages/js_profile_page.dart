import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JSProfilePage extends StatelessWidget {
  const JSProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Applicant Profile',
            ),
            body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                    ),
                    child: BlocBuilder<SettingBloc, SettingState>(
                      bloc: context.read<SettingBloc>()
                        ..add(SettingEvent.getJobSeekerProfile()),
                      builder: (context, state) {
                        if (state.getJobSeekerProfileState ==
                            GetJobSeekerProfileState.loading) {
                          return Center(child: CircularProgressIndicator());
                        }

                        if (state.getJobSeekerProfileState ==
                            GetJobSeekerProfileState.failure) {
                          return Center(child: Text('Error: '));
                        }

                        // if (state.featureCandidateList.isEmpty) {
                        //   return Center(child: Text('No items found.'));
                        // }
                        return Column(children: [
                          SizedBox(height: 26.v),
                          SizedBox(
                              height: 75.adaptSize,
                              width: 75.adaptSize,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl:
                                          // state.getJobSeekerResponseEntity
                                          //         ?.profileImage ??
                                          'https://storage.googleapis.com/kunpexchange-6a590.appspot.com/cities_post/600c520b-321f-4155-a9f7-6a06cb137466download (4).jpeg',

                                      //  state.jobSeekerJobList[index].profileImage,
                                      fit: BoxFit.cover,

                                      progressIndicatorBuilder:
                                          (context, url, downloadProgress) =>
                                              const Center(),
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),

                                    // CustomImageView(
                                    //     imagePath: ImageConstant.imgEllipse5,
                                    //     height: 75.adaptSize,
                                    //     width: 75.adaptSize,
                                    //     radius: BorderRadius.circular(37.h),
                                    //     alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin: EdgeInsets.only(
                                                right: 6.h, bottom: 1.v),
                                            decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.circular(6.h),
                                                border: Border.all(
                                                    color: appTheme.gray5001,
                                                    width: 2.h,
                                                    strokeAlign:
                                                        strokeAlignOutside))))
                                  ])),
                          SizedBox(height: 8.v),
                          Text(state.getJobSeekerResponseEntity?.fullName ?? '',
                              style:
                                  CustomTextStyles.titleLargePrimarySemiBold),
                          SizedBox(height: 10.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(ImageConstant.imgMdiLocation),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 4.h, top: 2.v, bottom: 2.v),
                                    child: Text(
                                        state.getJobSeekerResponseEntity
                                                ?.city ??
                                            '',
                                        style: CustomTextStyles.titleSmall15))
                              ]),
                          SizedBox(height: 12.v),
                          Text(
                              "Job Preference: ${state.getJobSeekerResponseEntity?.jobPreference ?? ''}",
                              style:
                                  CustomTextStyles.titleMediumGray700Medium17),
                          SizedBox(height: 14.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(ImageConstant.imgCall),
                                Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Text(
                                        "${state.getJobSeekerResponseEntity?.phone ?? ''}",
                                        style: CustomTextStyles
                                            .titleSmallPrimarySemiBold))
                              ]),
                          SizedBox(height: 20.v),
                          Container(
                              width: 303.h,
                              margin: EdgeInsets.only(left: 41.h, right: 40.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "ygggvg",
                                        //   ${state.getJobSeekerResponseEntity?.serviceDescription ?? ''}
                                        //  ",
                                        style: CustomTextStyles
                                            .bodyMediumff666666),
                                    // TextSpan(
                                    //     text:
                                    //         "3 years of experience helping her target clients achieve their goals.",
                                    //     style: CustomTextStyles
                                    //         .titleSmallfff7941eSemiBold15)
                                  ]),
                                  textAlign: TextAlign.center)),
                          SizedBox(height: 22.v),
                          Divider(indent: 24.h, endIndent: 24.h),
                          SizedBox(height: 41.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Text("About",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      SizedBox(height: 10.v),
                                      Divider(indent: 24.h, endIndent: 24.h),
                                      SizedBox(height: 18.v),
                                      Text(
                                          'Chloé Scarlett is a freelance expertise with 3 years of experience helping her target clients achieve their goals.',
                                          style: CustomTextStyles
                                              .bodyMediumPrimary14),
                                      SizedBox(height: 18.v),
                                      Text("Education",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      SizedBox(height: 10.v),
                                      Divider(indent: 24.h, endIndent: 24.h),
                                      SizedBox(height: 18.v),
                                      Text(
                                          state.getJobSeekerResponseEntity
                                                      ?.education.length ==
                                                  0
                                              ? ''
                                              : state.getJobSeekerResponseEntity
                                                      ?.education[0].title ??
                                                  '',
                                          style: CustomTextStyles
                                              .bodyMediumPrimary14),
                                      SizedBox(height: 18.v),
                                      Text("Work Experience",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      SizedBox(height: 10.v),
                                      Divider(indent: 24.h, endIndent: 24.h),
                                      SizedBox(height: 18.v),
                                      Text(
                                          state.getJobSeekerResponseEntity
                                                      ?.experience.length ==
                                                  0
                                              ? ''
                                              : state.getJobSeekerResponseEntity!
                                                      .experience[0].title ??
                                                  '',
                                          style: CustomTextStyles
                                              .bodyMediumPrimary14),
                                      SizedBox(height: 16.v),
                                      Text("Work Photos",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      SizedBox(height: 10.v),
                                      ...List.generate(
                                          state
                                                  .getJobSeekerResponseEntity
                                                  ?.artisanAssignedSkills
                                                  .length ??
                                              0, (index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                state
                                                        .getJobSeekerResponseEntity
                                                        ?.artisanAssignedSkills[
                                                            index]
                                                        .skill ??
                                                    '',
                                                style: CustomTextStyles
                                                    .bodyMediumPrimaryContainer),
                                            SizedBox(height: 1.v),
                                          ],
                                        );
                                      })
                                    ])),
                              ]),
                          SizedBox(height: 7.v),
                          // SizedBox(height: 17.v),
                          // _buildReviews(context),
                          // SizedBox(height: 20.v),
                        ]);
                      },
                    )))));
  }

  /// Section Widget
  // Widget _buildEducation(BuildContext context) {
  //   return Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 3.h),
  //       child:
  //           );
  // }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Reviews", style: CustomTextStyles.titleSmallPrimaryContainer),
            SizedBox(height: 10.v),
            Text("()", style: CustomTextStyles.bodyMediumPrimary14)
          ]),
          CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbol,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 18.v, bottom: 8.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
