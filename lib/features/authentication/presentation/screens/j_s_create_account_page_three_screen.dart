import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'j_s_create_account_page_four_screen.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPagetThreeScreen extends HookWidget {
  final String email;
  JSCreateAccountPagetThreeScreen({required this.email, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final awardTitleController = useTextEditingController();
    final schoolNameController = useTextEditingController();
    final awardYearController = useTextEditingController();
    final courseNameController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
            resizeToAvoidBottomInset: false,
            body: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Form(
                  key: formKey,
                  child: SizedBox(
                      width: SizeUtils.width,
                      child: SingleChildScrollView(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22.h, vertical: 12.v),
                              child: Column(children: [
                                SizedBox(height: 10.v),
                                BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    return CustomDropDown<String>(
                                      title: "Educational Qualification",
                                      items: state.levelOfEducationList,
                                      selectedItem:
                                          state.educationalQualification,
                                      itemLabel: (gender) => gender,
                                      onChanged: (value) {
                                        context.read<AuthBloc>().add(
                                              AuthEvent
                                                  .updateSelectedEducationQualification(
                                                      value ?? ''),
                                            );
                                        print('ssss ${value}');
                                      },
                                    );
                                  },
                                ),
                                BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    if (state.educationalQualification ==
                                        "No Education") {
                                      return SizedBox();
                                    } else {
                                      return Column(
                                        children: [
                                          SizedBox(height: 30.v),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.h),
                                              child: CustomTextFormField(
                                                  title: 'School Name',
                                                  controller:
                                                      schoolNameController,
                                                  hintText: "Enter School Name",
                                                  textInputType:
                                                      TextInputType.name,
                                                  validator: FormValidation
                                                      .stringValidation,
                                                  hintStyle: theme
                                                      .textTheme.titleSmall!)),
                                          SizedBox(height: 30.v),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.h),
                                              child: CustomTextFormField(
                                                  title: 'Course Name',
                                                  textInputType:
                                                      TextInputType.name,
                                                  controller:
                                                      courseNameController,
                                                  validator: FormValidation
                                                      .stringValidation,
                                                  hintText: "Enter Course Name",
                                                  hintStyle: theme
                                                      .textTheme.titleSmall!)),
                                          SizedBox(height: 30.v),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.h),
                                              child: CustomTextFormField(
                                                  title: 'Graduation Year',
                                                  textInputType:
                                                      TextInputType.number,
                                                  controller:
                                                      awardYearController,
                                                  hintText:
                                                      "Enter Graduation Year",
                                                  validator: FormValidation
                                                      .stringValidation,
                                                  hintStyle: theme
                                                      .textTheme.titleSmall!,
                                                  textInputAction:
                                                      TextInputAction.done)),
                                          SizedBox(height: 30.v),
                                          CustomTextFormField(
                                              title: 'Certificate Obtained',
                                              controller: awardTitleController,
                                              hintText: "Enter Certificate",
                                              textInputType: TextInputType.name,
                                              validator: FormValidation
                                                  .stringValidation,
                                              hintStyle:
                                                  theme.textTheme.titleSmall!,
                                              textInputAction:
                                                  TextInputAction.done),
                                        ],
                                      );
                                    }
                                  },
                                ),
                                SizedBox(height: 45.v),
                                BlocSelector<AuthBloc, AuthState,
                                    RegisterJobSeekerEntity>(
                                  selector: (state) {
                                    return state.registerJobSeekerRequest;
                                  },
                                  builder: (context, registerJobSeekerRequest) {
                                    return CustomElevatedButton(
                                      onPressed: (() {
                                        if (formKey.currentState?.validate() ??
                                            false) {
                                          context.read<AuthBloc>().add(AuthEvent
                                              .updateRegisterJobSeekerRequest(
                                                  registerJobSeekerRequest.copyWith(
                                                      educationalQualification:
                                                          state
                                                              .educationalQualification,
                                                      schoolName:
                                                          schoolNameController
                                                              .text,
                                                      certificateObtained:
                                                          awardTitleController
                                                              .text,
                                                      courseName:
                                                          courseNameController
                                                              .text,
                                                      graduationYear:
                                                          awardYearController
                                                              .text)));
                                          Navigator.pushNamed(
                                              context,
                                              AppRoutes
                                                  .jSCreateAccountPageFourScreen,
                                              arguments: email);
                                        }
                                      }),
                                      text: "Next",
                                    );
                                  },
                                ),
                                SizedBox(height: 40.v),
                              ])))),
                );
              },
            )));
  }
}
