import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/presentation/widgets/reject_page_modal_box_dialog.dart';
import 'package:artisan_oga/shared/widgets/custom_outlined_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

Future<void> interviewedCandidate(context, String identityId,
    String jobIdentity, List<CandidateSkillEntity> entity) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
          titlePadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          content: Container(
            height: 220.v,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: AppColors.kwhite,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 0, top: 0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close))),
                ),
                SizedBox(
                  height: 15.v,
                ),
                Text(
                  'Have you interviewed this\ncandidate?',
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumPrimaryContainerMedium_1,
                ),
                SizedBox(
                  height: 30.v,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomOutlinedButton(
                        height: 46.v,
                        width: 120.h,
                        text: "Yes",
                        onPressed: () {
                          Navigator.pop(context);
                          rejectCandidateDialog(
                              context, identityId, jobIdentity, entity);
                        },
                        buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                        buttonTextStyle: theme.textTheme.titleMedium!.copyWith(
                          fontSize: 19.fSize,
                          color: AppColors.kwhite,
                          fontWeight: FontWeight.w700,
                        )),
                    CustomOutlinedButton(
                        height: 46.v,
                        width: 120.h,
                        text: "No",
                        //  margin: EdgeInsets.only(left: 22.h),
                        onPressed: () {
                          Navigator.pop(context);
                          employerReview(
                              context, identityId, jobIdentity, entity);

                          // acceptCandidateDialog(
                          //     context,
                          //     getAssignedApplicantsEntity.users.identity,
                          //     jobIdentity,
                          //     state.candidateSkillList);
                        },
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        buttonTextStyle: CustomTextStyles.titleMediumBold),
                  ],
                ),
              ],
            ),
          ));
    },
  );
}

Future<void> employerReview(context, String identityId, String jobIdentity,
    List<CandidateSkillEntity> entity) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
          titlePadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          content: Container(
            height: 250.v,
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: AppColors.kwhite,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 0, top: 0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close))),
                ),
                // SizedBox(
                //   height: 30.v,
                // ),
                CustomTextFormField(
                  title: 'Review',
                  titleStyle:
                      CustomTextStyles.titleMediumPrimaryContainerMedium_1,
                  //  controller: reviewController,
                  hintText: "Share your experience with this candidate",
                  validator: FormValidation.stringValidation,
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 30.v,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomOutlinedButton(
                        height: 46.v,
                        width: 120.h,
                        text: "Close",
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                        buttonTextStyle: theme.textTheme.titleMedium!.copyWith(
                          fontSize: 19.fSize,
                          color: AppColors.kwhite,
                          fontWeight: FontWeight.w700,
                        )),
                    CustomOutlinedButton(
                        height: 46.v,
                        width: 120.h,
                        text: "Reject",
                        onPressed: () {
                          Navigator.pop(context);
                          // acceptCandidateDialog(
                          //     context,
                          //     getAssignedApplicantsEntity.users.identity,
                          //     jobIdentity,
                          //     state.candidateSkillList);
                        },
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        buttonTextStyle: CustomTextStyles.titleMediumBold),
                  ],
                ),
              ],
            ),
          ));
    },
  );
}
