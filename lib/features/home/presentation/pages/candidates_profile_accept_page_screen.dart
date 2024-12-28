import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/features/home/presentation/widgets/waitering_item_widget.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CandidatesProfileAcceptPageScreen extends StatelessWidget {
  final String id;

  const CandidatesProfileAcceptPageScreen({Key? key, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
              title: '',
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
                          Text("Applicants Profile",
                              style: theme.textTheme.titleLarge),
                          SizedBox(height: 21.v),
                          SizedBox(
                              height: 75.adaptSize,
                              width: 75.adaptSize,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse5,
                                        height: 75.adaptSize,
                                        width: 75.adaptSize,
                                        radius: BorderRadius.circular(37.h),
                                        alignment: Alignment.center),
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
                          Text(state.candidateProfileEntity?.fullName ?? '',
                              style:
                                  CustomTextStyles.titleLargePrimarySemiBold),
                          SizedBox(height: 10.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMdiLocation,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 4.h, top: 2.v, bottom: 2.v),
                                    child: Text(
                                        state.candidateProfileEntity?.city ??
                                            '',
                                        style: CustomTextStyles.titleSmall15))
                              ]),
                          SizedBox(height: 12.v),
                          Text(
                              "Job Preference: ${state.candidateProfileEntity?.jobPreference ?? ''}",
                              style:
                                  CustomTextStyles.titleMediumGray700Medium17),
                          SizedBox(height: 14.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgCall,
                                    height: 17.adaptSize,
                                    width: 17.adaptSize,
                                    margin: EdgeInsets.only(top: 1.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Text(
                                        "${state.candidateProfileEntity?.phone ?? ''}",
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
                                        text:
                                            "Chloé Scarlett ${state.candidateProfileEntity?.serviceDescription ?? ''} ",
                                        style: CustomTextStyles
                                            .bodyMediumff666666),
                                    TextSpan(
                                        text:
                                            "3 years of experience helping her target clients achieve their goals.",
                                        style: CustomTextStyles
                                            .titleSmallfff7941eSemiBold15)
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
                                      GestureDetector(
                                        onTap: () {
                                          print(
                                              'awards ${state.candidateProfileEntity!.artisanAssignedSkills!.length}');
                                        },
                                        child: Text("Education",
                                            style: CustomTextStyles
                                                .titleSmallPrimaryContainer),
                                      ),
                                      SizedBox(height: 10.v),
                                      Text(
                                          state.candidateProfileEntity
                                                  ?.education?[0].title ??
                                              '',
                                          style: CustomTextStyles
                                              .bodyMediumPrimary14),
                                      SizedBox(height: 18.v),
                                      Text("Experience",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      SizedBox(height: 8.v),
                                      Text("()",
                                          style: CustomTextStyles
                                              .bodyMediumPrimary14),
                                      SizedBox(height: 16.v),
                                      Text("Skills",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      SizedBox(height: 9.v),
                                      Wrap(
                                          runSpacing: 6.v,
                                          spacing: 6.h,
                                          children: List<Widget>.generate(
                                              state
                                                  .candidateProfileEntity!
                                                  .artisanAssignedSkills!
                                                  .length,
                                              (index) => GestureDetector(
                                                    onTap: () {
                                                      print('hooo');
                                                      // print(
                                                      //     'inde ${state.candidateProfileEntity?.artisanAssignedSkills?[index].skill}');
                                                    },
                                                    child: WaiteringItemWidget(
                                                        skill: state
                                                                .candidateProfileEntity
                                                                ?.artisanAssignedSkills?[
                                                                    index]
                                                                .skill ??
                                                            ''),
                                                  ))),
                                      SizedBox(height: 17.v),
                                      Text("Skill Endorsement",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      SizedBox(height: 10.v),
                                      Text("Waitering",
                                          style: CustomTextStyles
                                              .bodyMediumPrimaryContainer)
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 49.h, top: 17.v, bottom: 139.v),
                                    child: Column(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgZondiconsEducation,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      SizedBox(height: 43.v),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgSubwayBook,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize)
                                    ]))
                              ]),
                          SizedBox(height: 1.v),
                          Container(
                              height: 14.v,
                              width: 380.h,
                              decoration: BoxDecoration(
                                  color: appTheme.gray700.withOpacity(0.18),
                                  borderRadius: BorderRadius.circular(2.h))),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("Supervising",
                                      style: CustomTextStyles
                                          .bodyMediumPrimaryContainer))),
                          SizedBox(height: 1.v),
                          Container(
                              height: 14.v,
                              width: 380.h,
                              decoration: BoxDecoration(
                                  color: appTheme.gray700.withOpacity(0.18),
                                  borderRadius: BorderRadius.circular(2.h))),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text("Receptionist",
                                      style: CustomTextStyles
                                          .bodyMediumPrimaryContainer))),
                          SizedBox(height: 1.v),
                          Container(
                              height: 14.v,
                              width: 380.h,
                              decoration: BoxDecoration(
                                  color: appTheme.gray700.withOpacity(0.18),
                                  borderRadius: BorderRadius.circular(2.h))),
                          SizedBox(height: 17.v),
                          _buildReviews(context),
                          SizedBox(height: 20.v),
                          SizedBox(
                              width: 130.h,
                              child: Divider(
                                  color: theme.colorScheme.primaryContainer
                                      .withOpacity(1)))
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
