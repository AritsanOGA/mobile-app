import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_constants/app_strings.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'j_s_create_account_page_five_screen.dart';

class JSCreateAccountPageFourScreen extends HookWidget {
  final String email;
  JSCreateAccountPageFourScreen({required this.email, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final roleController = useTextEditingController();
    final companyNameController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final startYearController = useTextEditingController();
    final endYearController = useTextEditingController();
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
                return SizedBox(
                    width: SizeUtils.width,
                    child: SingleChildScrollView(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Form(
                          key: formKey,
                          child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22.h, vertical: 12.v),
                              child: Column(children: [
                                SizedBox(height: 10.v),
                                BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    return CustomDropDown<String>(
                                      title: "Employment History",
                                      items: state.employmentHistoryList,
                                      selectedItem: state.employmentHistory,
                                      itemLabel: (history) => history,
                                      onChanged: (value) {
                                        context.read<AuthBloc>().add(
                                              AuthEvent.updateEmploymentHistory(
                                                  value ?? ''),
                                            );
                                        print('ssss ${value}');
                                      },
                                    );
                                  },
                                ),
                                BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    if (state.employmentHistory ==
                                            "No Employment History" ||
                                        state.employmentHistory ==
                                            "--Select--") {
                                      return SizedBox();
                                    } else {
                                      return Column(
                                        children: [
                                          SizedBox(height: 30.v),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.h),
                                              child: CustomTextFormField(
                                                  title: 'Company Name',
                                                  controller:
                                                      companyNameController,
                                                  textInputType:
                                                      TextInputType.name,
                                                  validator: FormValidation
                                                      .stringValidation,
                                                  hintText:
                                                      "Enter Company Name",
                                                  hintStyle: theme
                                                      .textTheme.titleSmall!)),
                                          SizedBox(height: 30.v),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.h),
                                              child: CustomTextFormField(
                                                  title: 'Role',
                                                  controller: roleController,
                                                  textInputType:
                                                      TextInputType.name,
                                                  validator: FormValidation
                                                      .stringValidation,
                                                  hintText: "Enter Role",
                                                  hintStyle: theme
                                                      .textTheme.titleSmall!,
                                                  textInputAction:
                                                      TextInputAction.done)),
                                          SizedBox(height: 30.v),
                                          CustomTextFormField(
                                            hintText: 'Enter Start Year',
                                            title: 'Start Year',
                                            textInputType: TextInputType.number,
                                            validator:
                                                FormValidation.stringValidation,
                                            controller: startYearController,
                                          ),
                                          SizedBox(height: 30.v),
                                          BlocBuilder<AuthBloc, AuthState>(
                                            builder: (context, state) {
                                              return CustomDropDown<String>(
                                                title: "End Year",
                                                items: AppStrings
                                                    .yearList1980to2025,
                                                selectedItem: state.selectedYear
                                                    .toString(),
                                                itemLabel: (history) => history,
                                                onChanged: (value) {
                                                  context.read<AuthBloc>().add(
                                                        AuthEvent.selectYear(
                                                            value ?? ''),
                                                      );
                                                  print('ssss ${value}');
                                                },
                                              );
                                            },
                                          ),
                                          // CustomTextFormField(
                                          //   hintText: 'Enter End Year',
                                          //   title: 'End Year',
                                          //   textInputType: TextInputType.number,
                                          //   validator:
                                          //       FormValidation.stringValidation,
                                          //   controller: endYearController,
                                          // ),
                                          SizedBox(height: 27.v),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.h),
                                              child: CustomTextFormField(
                                                  title: 'Description',
                                                  maxLines: 5,
                                                  textInputType:
                                                      TextInputType.name,
                                                  validator: FormValidation
                                                      .stringValidation,
                                                  controller:
                                                      descriptionController,
                                                  hintText:
                                                      "Enter role description",
                                                  hintStyle: theme
                                                      .textTheme.titleSmall!,
                                                  textInputAction:
                                                      TextInputAction.done)),
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
                                          context.read<AuthBloc>().add(
                                              AuthEvent.updateRegisterJobSeekerRequest(
                                                  registerJobSeekerRequest.copyWith(
                                                      employmentHistory: state
                                                          .employmentHistory,
                                                      companyName:
                                                          companyNameController
                                                              .text,
                                                      role: roleController.text,
                                                      startYear:
                                                          startYearController
                                                              .text,
                                                      endYear: state
                                                          .selectedYear
                                                          .toString(),
                                                      description:
                                                          descriptionController
                                                              .text)));
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    JSCreateAccountPageFiveScreen(
                                                      email: email,
                                                    )),
                                          );
                                        }
                                      }),
                                      text: "Next",
                                    );
                                  },
                                ),
                                SizedBox(height: 40.v),
                              ])),
                        )));
              },
            )));
  }
}
