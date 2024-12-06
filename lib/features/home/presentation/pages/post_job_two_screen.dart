import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_radio_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:page_transition/page_transition.dart';

import 'post_job_three_screen.dart';

class PostJobTwoScreen extends HookWidget {
  @override
  @override
  Widget build(BuildContext context) {
    final hireesNumberController = useTextEditingController();
    final companyNameController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
              titleStatus: false,
              //hasBackButton: false,

              title: 'Back',
            ),
            backgroundColor: AppColors.kwhite,
            body: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Form(
                  key: formKey,
                  child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 12.v),
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            // SizedBox(height: 26.v),
                            // Row(children: [
                            //   CustomImageView(
                            //       imagePath: ImageConstant.imgArrowLeftOnprimary,
                            //       height: 16.adaptSize,
                            //       width: 16.adaptSize,
                            //       margin: EdgeInsets.symmetric(vertical: 2.v),
                            //       onTap: () {
                            //         Navigator.pop(context);
                            //       }),
                            //   Padding(
                            //       padding: EdgeInsets.only(left: 7.h),
                            //       child: Text("Back",
                            //           style:
                            //               CustomTextStyles.titleMediumOnPrimary))
                            // ]),
                            SizedBox(height: 25.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("Skill Level",
                                    style:
                                        CustomTextStyles.titleMediumMedium18)),
                            SizedBox(height: 20.v),
                            CustomRadioButton(
                                text: "Internship/Graduate Training",
                                value: state.skillLevelList[0],
                                groupValue: state.skillLevel,
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedSkillLevel(
                                            value),
                                      );
                                }),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 11.v, right: 114.h),
                                child: CustomRadioButton(
                                    text: "Semi-Skilled",
                                    value: state.skillLevelList[1],
                                    groupValue: state.skillLevel,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.updateSelectedSkillLevel(
                                                value),
                                          );
                                    })),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 11.v, right: 85.h),
                                child: CustomRadioButton(
                                    text: "Skilled",
                                    value: state.skillLevelList[2],
                                    groupValue: state.skillLevel,
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.updateSelectedSkillLevel(
                                                value),
                                          );
                                    })),
                            SizedBox(height: 25.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("Academic Qualification",
                                    style:
                                        CustomTextStyles.titleMediumMedium18)),
                            SizedBox(height: 20.v),
                            Padding(
                                padding: EdgeInsets.only(right: 74.h),
                                child: CustomRadioButton(
                                    text: "BSC",
                                    value: state.levelOfEducationList[0],
                                    groupValue: state.educationLevel,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedEducationlevel(
                                                    value),
                                          );
                                    })),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 11.v, right: 58.h),
                                child: CustomRadioButton(
                                    text: "BA",
                                    value: state.levelOfEducationList[1],
                                    groupValue: state.educationLevel,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedEducationlevel(
                                                    value),
                                          );
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: CustomRadioButton(
                                    text: "MSC",
                                    value: state.levelOfEducationList[2],
                                    groupValue: state.educationLevel,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedEducationlevel(
                                                    value),
                                          );
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: CustomRadioButton(
                                    text: "OND",
                                    value: state.levelOfEducationList[3],
                                    groupValue: state.educationLevel,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedEducationlevel(
                                                    value),
                                          );
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: CustomRadioButton(
                                    text: "HND",
                                    value: state.levelOfEducationList[4],
                                    groupValue: state.educationLevel,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedEducationlevel(
                                                    value),
                                          );
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: CustomRadioButton(
                                    text: "SSCE",
                                    value: state.levelOfEducationList[5],
                                    groupValue: state.educationLevel,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedEducationlevel(
                                                    value),
                                          );
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: CustomRadioButton(
                                    text: "None",
                                    value: state.levelOfEducationList[6],
                                    groupValue: state.educationLevel,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedEducationlevel(
                                                    value),
                                          );
                                    })),
                            SizedBox(height: 25.v),

                            Divider(),
                            SizedBox(height: 23.v),
                            CustomTextFormField(
                              title: 'How many Hirees?',
                              textInputType: TextInputType.number,
                              validator: FormValidation.stringValidation,
                              titleStyle: CustomTextStyles.titleMediumMedium18,
                              hintText: 'Enter number hires for this opening',
                              controller: hireesNumberController,
                              isBorderNone: true,
                            ),
                            SizedBox(height: 25.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("Gender",
                                    style:
                                        CustomTextStyles.titleMediumMedium18)),
                            SizedBox(height: 20.v),
                            Padding(
                                padding: EdgeInsets.only(right: 74.h),
                                child: CustomRadioButton(
                                    text: "Male",
                                    value: state.genderList[0],
                                    groupValue: state.gender,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.updateSelectedGender(
                                                value),
                                          );
                                    })),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 11.v, right: 58.h),
                                child: CustomRadioButton(
                                    text: "Female",
                                    value: state.genderList[1],
                                    groupValue: state.gender,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.updateSelectedGender(
                                                value),
                                          );
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: CustomRadioButton(
                                    text: "No preferences",
                                    value: state.genderList[2],
                                    groupValue: state.gender,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.updateSelectedGender(
                                                value),
                                          );
                                    })),

                            SizedBox(height: 27.v),
                            Divider(),
                            SizedBox(height: 23.v),
                            CustomTextFormField(
                              title: 'Company Name',
                              titleStyle: CustomTextStyles.titleMediumMedium18,
                              hintText: 'Enter your Company’s Name',
                              controller: companyNameController,
                              validator: FormValidation.stringValidation,
                              isBorderNone: true,
                            ),
                            SizedBox(height: 25.v),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("Compensation Type",
                                    style:
                                        CustomTextStyles.titleMediumMedium18)),
                            SizedBox(height: 20.v),
                            Padding(
                                padding: EdgeInsets.only(right: 35.h),
                                child: CustomRadioButton(
                                    text: "Salary",
                                    value: state.compensationTypeList[0],
                                    groupValue: state.compensationType,
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedCompensationType(
                                                    value),
                                          );
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 11.v),
                                child: CustomRadioButton(
                                    text: "Pay per job",
                                    value: state.compensationTypeList[1],
                                    groupValue: state.compensationType,
                                    onChange: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedCompensationType(
                                                    value),
                                          );
                                    })),
                            SizedBox(height: 40.v),
                            BlocSelector<HomeBloc, HomeState, PostJobEntity>(
                              selector: (state) {
                                return state.postJobRequest;
                              },
                              builder: (context, postJobRequest) {
                                return CustomElevatedButton(
                                  onPressed: (() {
                                    if (formKey.currentState?.validate() ??
                                        false) {
                                      print(
                                          '${state.workMode} ${state.jobType} ${hireesNumberController.text}');
                                      context.read<HomeBloc>().add(
                                            HomeEvent.updatePostJobRequest(
                                              postJobRequest.copyWith(
                                                  skillLevel: state.skillLevel,
                                                  levelOfEducation:
                                                      state.educationLevel,
                                                  position:
                                                      hireesNumberController
                                                          .text,
                                                  gender: state.gender,
                                                  companyName:
                                                      companyNameController
                                                          .text,
                                                  compensationType:
                                                      state.compensationType),
                                            ),
                                          );

                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .rightToLeft,
                                              duration: Durations.long1,
                                              child: PostJobThreeScreen()));
                                    }
                                  }),
                                  text: "Next",
                                );
                              },
                            ),
                            SizedBox(height: 20.v),
                          ]))),
                );
              },
            )));
  }
}
