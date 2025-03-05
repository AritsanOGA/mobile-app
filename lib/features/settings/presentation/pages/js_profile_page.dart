import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/home/presentation/widgets/waitering_item_widget.dart';
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
    return Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          title: 'Profile',
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
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: 12.adaptSize,
                                        width: 12.adaptSize,
                                        margin: EdgeInsets.only(
                                            right: 6.h, bottom: 1.v),
                                        decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
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
                          style: CustomTextStyles.titleLargePrimarySemiBold),
                      SizedBox(height: 10.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(ImageConstant.imgMdiLocation),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 4.h, top: 2.v, bottom: 2.v),
                                child: Text(
                                    state.getJobSeekerResponseEntity?.city ??
                                        '',
                                    style: CustomTextStyles.titleSmall15))
                          ]),
                      SizedBox(height: 14.v),
                      Text(
                          "Job Preference: ${state.getJobSeekerResponseEntity?.jobType ?? ''}",
                          style: CustomTextStyles.titleMediumGray700Medium17),
                      SizedBox(height: 20.v),
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
                                  Divider(
                                    height: 2,
                                  ),
                                  SizedBox(height: 10.v),
                                  Text(
                                      state.getJobSeekerResponseEntity?.about ??
                                          '',
                                      style:
                                          CustomTextStyles.bodyMediumPrimary14),
                                  SizedBox(height: 20.v),
                                  Text("Education",
                                      style: CustomTextStyles
                                          .titleSmallPrimaryContainer),
                                  SizedBox(height: 10.v),
                                  Divider(
                                    height: 2,
                                  ),
                                  SizedBox(height: 10.v),
                                  Text(
                                      state.getJobSeekerResponseEntity
                                                  ?.education.length ==
                                              0
                                          ? ''
                                          : state.getJobSeekerResponseEntity
                                                  ?.education[0].title ??
                                              '',
                                      style:
                                          CustomTextStyles.bodyMediumPrimary14),
                                  SizedBox(height: 20.v),
                                  state.getJobSeekerResponseEntity?.experience
                                              .length ==
                                          0
                                      ? SizedBox()
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Work Experience",
                                                style: CustomTextStyles
                                                    .titleSmallPrimaryContainer),
                                            SizedBox(height: 10.v),
                                            Divider(
                                              height: 2,
                                            ),
                                            SizedBox(height: 10.v),
                                            ...List.generate(
                                                state.getJobSeekerResponseEntity
                                                        ?.experience.length ??
                                                    0, (index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                            state
                                                                    .getJobSeekerResponseEntity
                                                                    ?.experience[
                                                                        index]
                                                                    .companyName ??
                                                                '',
                                                            style: CustomTextStyles
                                                                .titleSmallPrimaryContainer),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text(
                                                            '(${(state.getJobSeekerResponseEntity?.experience[index].startYear)} - ${state.getJobSeekerResponseEntity?.experience[index].endYear ?? ''})',
                                                            style: CustomTextStyles
                                                                .titleSmallPrimaryContainer),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5.v),
                                                    Text(
                                                        state
                                                                .getJobSeekerResponseEntity
                                                                ?.experience[
                                                                    index]
                                                                .desc ??
                                                            '',
                                                        style: CustomTextStyles
                                                            .titleSmallPrimaryContainer),
                                                  ],
                                                ),
                                              );
                                            }),
                                          ],
                                        ),

                                  // SizedBox(height: 20.v),
                                  // Text("Work Photos",
                                  //     style: CustomTextStyles
                                  //         .titleSmallPrimaryContainer),
                                  // SizedBox(height: 10.v),
                                  // Divider(
                                  //   height: 2,
                                  // ),
                                  // SizedBox(height: 10.v),
                                  // SizedBox(
                                  //   height: 50,
                                  //   child: ListView(
                                  //     scrollDirection: Axis.horizontal,
                                  //     children: [
                                  //       ...List.generate(5, (index) {
                                  //         return Padding(
                                  //           padding: const EdgeInsets.symmetric(
                                  //               horizontal: 3),
                                  //           child: SizedBox(
                                  //             width: 50,
                                  //             height: 50,
                                  //             child: CachedNetworkImage(
                                  //               imageUrl:
                                  //                   'https://picsum.photos/250?image=9',

                                  //               //  state.jobSeekerJobList[index].profileImage,
                                  //               fit: BoxFit.cover,

                                  //               progressIndicatorBuilder:
                                  //                   (context, url,
                                  //                           downloadProgress) =>
                                  //                       const Center(),
                                  //               imageBuilder:
                                  //                   (context, imageProvider) =>
                                  //                       Container(
                                  //                 // width: 50,
                                  //                 // height: 50,
                                  //                 decoration: BoxDecoration(
                                  //                   // shape: BoxShape.circle,
                                  //                   borderRadius:
                                  //                       BorderRadius.circular(
                                  //                           10),
                                  //                   image: DecorationImage(
                                  //                     image:
                                  //                         imageProvider, // Use the provided imageProvider
                                  //                     fit: BoxFit.cover,
                                  //                   ),
                                  //                 ),
                                  //               ),
                                  //               errorWidget:
                                  //                   (context, url, error) =>
                                  //                       const Icon(Icons.error),
                                  //             ),
                                  //           ),
                                  //         );
                                  //       })
                                  //     ],
                                  //   ),
                                  // ),

                                  // SizedBox(height: 40.v),
                                  Text("Skills",
                                      style: CustomTextStyles
                                          .titleSmallPrimaryContainer),
                                  SizedBox(height: 10.v),
                                  Divider(
                                    height: 2,
                                  ),
                                  SizedBox(height: 10.v),
                                  Wrap(
                                      runSpacing: 6.v,
                                      spacing: 6.h,
                                      children: List<Widget>.generate(
                                          state
                                                  .getJobSeekerResponseEntity
                                                  ?.artisanAssignedSkills
                                                  .length ??
                                              0,
                                          (index) => WaiteringItemWidget(
                                              skill: state
                                                      .getJobSeekerResponseEntity
                                                      ?.artisanAssignedSkills[
                                                          index]
                                                      .skill ??
                                                  ''))),
                                  SizedBox(height: 20.v),
                                  Text("Skill Endorsement",
                                      style: CustomTextStyles
                                          .titleSmallPrimaryContainer),
                                  SizedBox(height: 10.v),
                                  ...List.generate(
                                      state.getJobSeekerResponseEntity
                                              ?.artisanAssignedSkills.length ??
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
                                        Container(
                                            height: 14.v,
                                            width: 380.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray700
                                                    .withOpacity(0.18),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2.h))),
                                        SizedBox(height: 7.v),
                                      ],
                                    );
                                  }),
                                  state.getJobSeekerResponseEntity
                                              ?.awardsAndCertificates.length ==
                                          0
                                      ? SizedBox()
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 20.v),
                                            Text("Awards & Certificates",
                                                style: CustomTextStyles
                                                    .titleSmallPrimaryContainer),
                                            SizedBox(height: 10.v),
                                            Divider(
                                              height: 2,
                                            ),
                                            SizedBox(height: 10.v),
                                            Text(
                                                state
                                                        .getJobSeekerResponseEntity
                                                        ?.awardsAndCertificates[
                                                            0]
                                                        .title ??
                                                    '',
                                                //  'Best Staff of the month - Mar, 2005',
                                                style: CustomTextStyles
                                                    .titleSmallPrimaryContainer),
                                          ],
                                        ),

                                  SizedBox(height: 20.v),

                                  state.getJobSeekerResponseEntity
                                              ?.customerRating?.length ==
                                          0
                                      ? SizedBox()
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Employer Feedback",
                                                style: CustomTextStyles
                                                    .titleSmallPrimaryContainer),
                                            SizedBox(height: 10.v),
                                            Divider(
                                              height: 2,
                                            ),
                                            SizedBox(height: 10.v),
                                            ...List.generate(
                                                state.getJobSeekerResponseEntity
                                                        ?.customerRating?.length ??
                                                    0, (index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            'https://picsum.photos/250?image=9',
                                                        fit: BoxFit.cover,
                                                        progressIndicatorBuilder:
                                                            (context, url,
                                                                    downloadProgress) =>
                                                                const Center(),
                                                        imageBuilder: (context,
                                                                imageProvider) =>
                                                            Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            image:
                                                                DecorationImage(
                                                              image:
                                                                  imageProvider,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        errorWidget: (context,
                                                                url, error) =>
                                                            const Icon(
                                                                Icons.error),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(state
                                                                .getJobSeekerResponseEntity
                                                                ?.customerRating?[
                                                                    index]
                                                                .fullName ??
                                                            ''),
                                                        Text(state
                                                                .getJobSeekerResponseEntity
                                                                ?.customerRating?[
                                                                    index]
                                                                .review ??
                                                            ''),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              );
                                            }),
                                          ],
                                        ),

                                  SizedBox(height: 50.v),
                                ])),
                          ]),
                    ]);
                  },
                ))));
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
