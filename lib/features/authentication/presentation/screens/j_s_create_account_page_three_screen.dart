import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'j_s_create_account_page_four_screen.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPagetThreeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final awardTitleController = useTextEditingController();
    final schoolNameController = useTextEditingController();
    final awardYearController = useTextEditingController();
    final courseNameController = useTextEditingController();

    final authBloc = BlocProvider.of<AuthBloc>(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
            resizeToAvoidBottomInset: false,
            body: SizedBox(
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
                                items: authBloc.educationalQualification,
                                selectedItem: state.educationalQualification ??
                                    'No Education',
                                //  state.gender ?? "--Select--",
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
                                            controller: schoolNameController,
                                            hintText: "Enter School Name",
                                            hintStyle:
                                                theme.textTheme.titleSmall!)),
                                    SizedBox(height: 30.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.h),
                                        child: CustomTextFormField(
                                            title: 'Course Name',
                                            controller: courseNameController,
                                            hintText: "Enter Course Name",
                                            hintStyle:
                                                theme.textTheme.titleSmall!)),
                                    SizedBox(height: 30.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.h),
                                        child: CustomTextFormField(
                                            title: 'Graduation Year',
                                            controller: awardYearController,
                                            hintText: "Enter Graduation Year",
                                            hintStyle:
                                                theme.textTheme.titleSmall!,
                                            textInputAction:
                                                TextInputAction.done)),
                                    SizedBox(height: 30.v),
                                    CustomTextFormField(
                                        title: 'Certificate Obtained',
                                        controller: awardTitleController,
                                        hintText: "Enter Certificate",
                                        hintStyle: theme.textTheme.titleSmall!,
                                        textInputAction: TextInputAction.done),
                                  ],
                                );
                              }
                            },
                          ),
                          SizedBox(height: 45.v),
                          CustomElevatedButton(
                            onPressed: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        JSCreateAccountPageFourScreen()),
                              );
                            }),
                            text: "Next",
                          ),
                        ]))))));
  }
}
