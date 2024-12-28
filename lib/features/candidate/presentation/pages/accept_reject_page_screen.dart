import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/presentation/widgets/accept_reject_page_modal_box_dialog.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class AcceptRejectPageScreen extends StatelessWidget {
  final String jobIdentity;
  final GetAssignedApplicantsEntity getAssignedApplicantsEntity;
  const AcceptRejectPageScreen(
      {Key? key,
      required this.getAssignedApplicantsEntity,
      required this.jobIdentity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Applicants',
            ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  // Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: Row(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           CustomImageView(
                  //               imagePath: ImageConstant.imgArrowLeftOnprimary,
                  //               height: 16.adaptSize,
                  //               width: 16.adaptSize,
                  //               margin: EdgeInsets.only(top: 3.v, bottom: 5.v),
                  //               onTap: () {
                  //                 // onTapImgArrowLeft(context);
                  //               }),
                  //           Padding(
                  //               padding: EdgeInsets.only(left: 126.h),
                  //               child: Text("Applicants",
                  //                   style: theme.textTheme.titleLarge))
                  //         ])),
                  SizedBox(height: 35.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse5,
                      height: 75.adaptSize,
                      width: 75.adaptSize,
                      radius: BorderRadius.circular(37.h)),
                  SizedBox(height: 8.v),
                  Text(getAssignedApplicantsEntity.users.fullName,
                      style: CustomTextStyles.titleLargePrimarySemiBold),
                  SizedBox(height: 5.v),
                  Text(getAssignedApplicantsEntity.users.availability,
                      style: CustomTextStyles.bodyLarge18),
                  SizedBox(height: 56.v),
                  Row(
                    children: [
                      //  CustomOutlinedButton(
                      //       height: 46.v,
                      //       width: 135.h,
                      //       text: "Reject",
                      //       margin: EdgeInsets.only(left: 22.h),
                      //       buttonStyle: CustomButtonStyles.outlinePrimary,
                      //       buttonTextStyle: CustomTextStyles.titleMediumBold),
                      CustomElevatedButton(
                          height: 46.v,
                          width: 135.h,
                          text: 'Accept',
                          onPressed: () {
                            acceptCandidateDialog(
                                context,
                                getAssignedApplicantsEntity.users.identity,
                                jobIdentity);
                            // showDialog(
                            //     context: context,
                            //     builder: (
                            //       context,
                            //     ) {
                            //       return AcceptRejectPageModalBoxDialog();
                            //     });
                          }),
                      CustomOutlinedButton(
                          height: 46.v,
                          width: 135.h,
                          text: "Reject",
                          margin: EdgeInsets.only(left: 22.h),
                          buttonStyle: CustomButtonStyles.outlinePrimary,
                          buttonTextStyle: CustomTextStyles.titleMediumBold),
                    ],
                  ),
                  Spacer(),
                  CustomElevatedButton(
                    text: "View Candidates",
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.candidatesProfilePage,
                          arguments:
                              getAssignedApplicantsEntity.users.identity);
                    },
                  ),
                  SizedBox(height: 49.v),
                  SizedBox(
                      width: 130.h,
                      child: Divider(
                          color: theme.colorScheme.primaryContainer
                              .withOpacity(1)))
                ]))));
  }
}
