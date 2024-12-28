import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class AcceptRejectPageScreen extends StatelessWidget {
  final GetAssignedApplicantsEntity getAssignedApplicantsEntity;
  const AcceptRejectPageScreen(
      {Key? key, required this.getAssignedApplicantsEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeftOnprimary,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(top: 3.v, bottom: 5.v),
                                onTap: () {
                                  // onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 126.h),
                                child: Text("Applicants",
                                    style: theme.textTheme.titleLarge))
                          ])),
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
                  CustomElevatedButton(
                      text: 'Accept',
                      onPressed: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (
                        //       context,
                        //     ) {
                        //       return
                        //       // Text('hh');
                        //     /AcceptRejectPageModalBoxDialog();
                        //     });
                      }),
                  CustomOutlinedButton(
                      height: 46.v,
                      width: 135.h,
                      text: "Reject",
                      margin: EdgeInsets.only(left: 22.h),
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle: CustomTextStyles.titleMediumBold),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 47.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomElevatedButton(
                              text: "Accept",
                              onPressed: () {},
                            ),
                          ])),
                  Spacer(),
                  CustomElevatedButton(
                    text: "View Candidates",
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.candidatesProfileAcceptPageScreen);
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
