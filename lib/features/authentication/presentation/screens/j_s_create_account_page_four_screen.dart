import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/text_formatter.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'j_s_create_account_page_five_screen.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageFourScreen extends HookWidget {
  JSCreateAccountPageFourScreen({Key? key}) : super(key: key);

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
                          // BlocBuilder<AuthBloc, AuthState>(
                          //   builder: (context, state) {
                          //     return CustomDropDown<String>(
                          //       title: "Employment History",
                          //       items: authBloc.employmentHistory,
                          //       selectedItem: state.employmentHistory ??
                          //           'No Employment History',
                          //       //  state.gender ?? "--Select--",
                          //       itemLabel: (history) => history,
                          //       onChanged: (value) {
                          //         context.read<AuthBloc>().add(
                          //               AuthEvent.updateEmploymentHistory(
                          //                   value ?? ''),
                          //             );
                          //         print('ssss ${value}');
                          //       },
                          //     );
                          //   },
                          // ),
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
                                            controller: companyNameController,
                                            hintText: "Enter Company Name",
                                            hintStyle:
                                                theme.textTheme.titleSmall!)),
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
                                      inputFormatters: [DateInputFormatter()],
                                      controller: startYearController,
                                    ),
                                    SizedBox(height: 30.v),
                                    CustomTextFormField(
                                      hintText: 'MM/DD/YYYY',
                                      title: 'End Year',
                                      inputFormatters: [DateInputFormatter()],
                                      controller: endYearController,
                                    ),
                                    SizedBox(height: 27.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.h),
                                        child: CustomTextFormField(
                                            title: 'Description',
                                            maxLines: 5,
                                            textInputType: TextInputType.number,
                                            controller: descriptionController,
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
                          CustomElevatedButton(
                            onPressed: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        JSCreateAccountPageFiveScreen()),
                              );
                            }),
                            text: "Next",
                          ),
                          SizedBox(height: 40.v),
                        ]))))));
  }
}
