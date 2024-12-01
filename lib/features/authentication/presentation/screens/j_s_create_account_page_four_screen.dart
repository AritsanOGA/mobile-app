import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/text_formatter.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'j_s_create_account_page_five_screen.dart';

// ignore_for_file: must_be_immutable
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
                                      "No Employment History") {
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
                                                hintText: "Enter Company Name",
                                                hintStyle: theme
                                                    .textTheme.titleSmall!)),
                                        SizedBox(height: 30.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3.h),
                                            child: CustomTextFormField(
                                                title: 'Role',
                                                controller: roleController,
                                                hintText: "Enter Role",
                                                hintStyle:
                                                    theme.textTheme.titleSmall!,
                                                textInputAction:
                                                    TextInputAction.done)),
                                        SizedBox(height: 30.v),
                                        CustomTextFormField(
                                          hintText: 'MM/DD/YYYY',
                                          title: 'Start Year',
                                          // inputFormatters: [
                                          //   DateInputFormatter()
                                          // ],
                                          controller: startYearController,
                                        ),
                                        SizedBox(height: 30.v),
                                        CustomTextFormField(
                                          hintText: 'MM/DD/YYYY',
                                          title: 'End Year',
                                          inputFormatters: [
                                            DateInputFormatter()
                                          ],
                                          controller: endYearController,
                                        ),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3.h),
                                            child: CustomTextFormField(
                                                title: 'Description',
                                                maxLines: 5,
                                                textInputType:
                                                    TextInputType.number,
                                                controller:
                                                    descriptionController,
                                                hintText: "Input here",
                                                hintStyle:
                                                    theme.textTheme.titleSmall!,
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
                                      context.read<AuthBloc>().add(AuthEvent
                                          .updateRegisterJobSeekerRequest(
                                              registerJobSeekerRequest.copyWith(
                                                  employmentHistory:
                                                      state.employmentHistory,
                                                  companyName:
                                                      companyNameController
                                                          .text,
                                                  role: roleController.text,
                                                  startYear:
                                                      startYearController.text,
                                                  endYear:
                                                      endYearController.text,
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
                                    }),
                                    text: "Next",
                                  );
                                },
                              ),
                              SizedBox(height: 40.v),
                            ]))));
              },
            )));
  }
}
