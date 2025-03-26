import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/features/home/presentation/widgets/waitering_item_widget.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CandidatesProfilePage extends StatelessWidget {
  final String id;

  const CandidatesProfilePage({Key? key, required this.id}) : super(key: key);

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
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                    child: BlocBuilder<CandidatesBloc, CandidatesState>(
                      bloc: context.read<CandidatesBloc>()
                        ..add(CandidatesEvent.getCandidateProfile(id)),
                      builder: (context, state) {
                        if (state.getCandidateProfileState ==
                            GetCandidateProfileState.loading) {
                          return Center(child: CircularProgressIndicator());
                        }

                        if (state.getCandidateProfileState ==
                            GetCandidateProfileState.failure) {
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
                                          // state.candidateProfileEntity
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
                          Text(
                              state.candidateProfileEntity?.profiles.fullName ??
                                  '',
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
                                        state.candidateProfileEntity?.profiles
                                                .city ??
                                            '',
                                        style: CustomTextStyles.titleSmall15))
                              ]),
                          SizedBox(height: 14.v),
                          Text(
                              "Job Preference: ${state.candidateProfileEntity?.profiles.jobType ?? ''}",
                              style:
                                  CustomTextStyles.titleMediumGray700Medium17),
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
                                          state.candidateProfileEntity?.profiles
                                                  .serviceDescription ??
                                              '',
                                          style: CustomTextStyles
                                              .bodyMediumPrimary14),
                                      SizedBox(height: 20.v),
                                      state.candidateProfileEntity?.profiles
                                                  .education.length ==
                                              0
                                          ? SizedBox()
                                          : Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Education",
                                                    style: CustomTextStyles
                                                        .titleSmallPrimaryContainer),
                                                SizedBox(height: 10.v),
                                                Divider(
                                                  height: 2,
                                                ),
                                                SizedBox(height: 10.v),
                                                Text(
                                                    state
                                                                .candidateProfileEntity
                                                                ?.profiles
                                                                .education
                                                                .length ==
                                                            0
                                                        ? ''
                                                        : state
                                                                .candidateProfileEntity
                                                                ?.profiles
                                                                .education[0]
                                                                .title ??
                                                            '',
                                                    style: CustomTextStyles
                                                        .bodyMediumPrimary14),
                                                SizedBox(height: 20.v),
                                              ],
                                            ),

                                      state.candidateProfileEntity?.profiles
                                                  .experience.length ==
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
                                                    state
                                                            .candidateProfileEntity
                                                            ?.profiles
                                                            .experience
                                                            .length ??
                                                        0, (index) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                                state
                                                                        .candidateProfileEntity
                                                                        ?.profiles
                                                                        .experience[
                                                                            index]
                                                                        .companyName ??
                                                                    '',
                                                                style: CustomTextStyles
                                                                    .titleSmallPrimaryContainer),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                                '(${(state.candidateProfileEntity?.profiles.experience[index].startYear ?? '')} - ${state.candidateProfileEntity?.profiles.experience[index].endYear ?? ''})',
                                                                style: CustomTextStyles
                                                                    .titleSmallPrimaryContainer),
                                                          ],
                                                        ),
                                                        SizedBox(height: 5.v),
                                                        Text(
                                                            state
                                                                    .candidateProfileEntity
                                                                    ?.profiles
                                                                    .experience[
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
                                                      .candidateProfileEntity
                                                      ?.profiles
                                                      .artisanAssignedSkills
                                                      .length ??
                                                  0,
                                              (index) => WaiteringItemWidget(
                                                  skill: state
                                                          .candidateProfileEntity
                                                          ?.profiles
                                                          .artisanAssignedSkills[
                                                              index]
                                                          .skill ??
                                                      ''))),
                                      SizedBox(height: 20.v),
                                      state
                                                  .candidateProfileEntity
                                                  ?.employerRating[0]
                                                  .employerRating
                                                  .length ==
                                              0
                                          ? SizedBox()
                                          : Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Skill Endorsement",
                                                    style: CustomTextStyles
                                                        .titleSmallPrimaryContainer),
                                                SizedBox(height: 10.v),
                                                ...List.generate(
                                                    state
                                                            .candidateProfileEntity
                                                            ?.employerRating
                                                            .length ??
                                                        0, (index) {
                                                  return Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          state
                                                                  .candidateProfileEntity
                                                                  ?.employerRating[
                                                                      index]
                                                                  .skills ??
                                                              '',
                                                          style: CustomTextStyles
                                                              .bodyMediumPrimaryContainer),
                                                      SizedBox(height: 5.v),
                                                      GestureDetector(
                                                        onTap: () {
                                                          print(
                                                              'hii ${state.candidateProfileEntity?.employerRating[index].employerRating[0].average?.toDouble()} ${((state.candidateProfileEntity?.employerRating[index].employerRating[0].average?.toDouble() ?? 0) / 100)}');
                                                        },
                                                        child:
                                                            LinearProgressIndicator(
                                                          value: ((state
                                                                      .candidateProfileEntity
                                                                      ?.employerRating[
                                                                          index]
                                                                      .employerRating[
                                                                          0]
                                                                      .average ??
                                                                  0) /
                                                              100),
                                                          backgroundColor:
                                                              Colors.grey[300],
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                      Color>(
                                                                  Colors.blue),
                                                        ),
                                                      ),
                                                      // Container(
                                                      //     height: 14.v,
                                                      //     width: 380.h,
                                                      //     decoration: BoxDecoration(
                                                      //         color: appTheme.gray700
                                                      //             .withOpacity(0.18),
                                                      //         borderRadius:
                                                      //             BorderRadius.circular(
                                                      //                 2.h))),
                                                      SizedBox(height: 7.v),
                                                    ],
                                                  );
                                                }),
                                              ],
                                            ),

                                      state
                                                  .candidateProfileEntity
                                                  ?.profiles
                                                  .awardsAndCertificates
                                                  .length ==
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
                                                            .candidateProfileEntity
                                                            ?.profiles
                                                            .awardsAndCertificates[
                                                                0]
                                                            .title ??
                                                        '',
                                                    //  'Best Staff of the month - Mar, 2005',
                                                    style: CustomTextStyles
                                                        .titleSmallPrimaryContainer),
                                              ],
                                            ),

                                      SizedBox(height: 20.v),

                                      state.candidateProfileEntity
                                                  ?.employerFeedback.length ==
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
                                                    state
                                                            .candidateProfileEntity
                                                            ?.employerFeedback
                                                            .length ??
                                                        0, (index) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 10),
                                                    child: Row(
                                                      children: [
                                                        state
                                                                    .candidateProfileEntity
                                                                    ?.employerFeedback[
                                                                        index]
                                                                    .profileImage !=
                                                                ''
                                                            ? CachedNetworkImage(
                                                                imageUrl: state
                                                                        .candidateProfileEntity
                                                                        ?.employerFeedback[
                                                                            index]
                                                                        .profileImage ??
                                                                    '',
                                                                fit: BoxFit
                                                                    .cover,
                                                                progressIndicatorBuilder:
                                                                    (context,
                                                                            url,
                                                                            downloadProgress) =>
                                                                        const Center(),
                                                                imageBuilder:
                                                                    (context,
                                                                            imageProvider) =>
                                                                        Container(
                                                                  width: 30,
                                                                  height: 30,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    image:
                                                                        DecorationImage(
                                                                      image:
                                                                          imageProvider,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                errorWidget: (context,
                                                                        url,
                                                                        error) =>
                                                                    const Icon(Icons
                                                                        .error),
                                                              )
                                                            : Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(5),
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    border: Border.all(
                                                                        width:
                                                                            2,
                                                                        color: AppColors
                                                                            .kblack)),
                                                                child: Icon(
                                                                  color: Colors
                                                                      .black,
                                                                  Icons.person,
                                                                  size: 30,
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
                                                                    .candidateProfileEntity
                                                                    ?.employerFeedback[
                                                                        index]
                                                                    .fullName ??
                                                                ''),
                                                            Text(state
                                                                    .candidateProfileEntity
                                                                    ?.employerFeedback[
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
                    )))));
  }

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
}
