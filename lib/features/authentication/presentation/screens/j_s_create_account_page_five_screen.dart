import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'j_s_create_account_page_six_screen.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageFiveScreen extends HookWidget {
  JSCreateAccountPageFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final yearsController = useTextEditingController();
    final whatYouDoController = useTextEditingController();
    return BlocProvider(
      create: (context) => AuthBloc()
        ..add(
          AuthEvent.getCategory(),
        ),
      child: SafeArea(
          child: Scaffold(
              backgroundColor: AppColors.kwhite,
              appBar: CustomAppBar(
                title: '',
              ),
              body: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 12.v),
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            SizedBox(height: 10.v),

                            BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                if (state.viewState == ViewState.loading) {
                                  return CircularProgressIndicator();
                                } else if (state.viewState ==
                                    ViewState.success) {
                                  return CustomDropDown<CategoryResponseEntity>(
                                    title: 'Country',
                                    items: state.categoryList,
                                    selectedItem: state.categoryList.firstWhere(
                                      (country) =>
                                          country.id ==
                                          (state.country?.id ?? 4),
                                      orElse: () => CategoryResponseEntity(
                                          id: 1, name: 'Fashion'),
                                    ),
                                    itemLabel: (category) => category.name,
                                    onChanged: (value) {
                                      context.read<AuthBloc>().add(
                                            AuthEvent.updateSelectedCategory(
                                                value!),
                                          );
                                      context.read<AuthBloc>().add(
                                            AuthEvent.getSkills(
                                                value.id.toString()),
                                          );
                                    },
                                  );
                                }
                                return Center(
                                  child: Text('Unexpected state encountered'),
                                );
                              },
                            ),
                            SizedBox(height: 30.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.h),
                                child: CustomTextFormField(
                                    title: 'Years of Experience',
                                    controller: yearsController,
                                    hintText: "e.g 3+ years",
                                    hintStyle: theme.textTheme.titleSmall!)),
                            SizedBox(height: 27.v),

                            BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                if (state.viewState == ViewState.loading) {
                                  return CircularProgressIndicator();
                                } else if (state.viewState ==
                                    ViewState.success) {
                                  return CustomDropDown<SkillResponseEntity>(
                                    title: 'State',
                                    items: state.skill,
                                    selectedItem: state.skill.firstWhere(
                                      (country) =>
                                          country.id ==
                                          (state.country?.id ?? 4),
                                      orElse: () => SkillResponseEntity(
                                          id: 1, name: 'Corset', categoryId: 1),
                                    ),
                                    itemLabel: (country) => country.name,
                                    onChanged: (value) {
                                      context.read<AuthBloc>().add(
                                            AuthEvent.updateSelectedSkill(
                                                value!),
                                          );
                                    },
                                  );
                                }
                                return Center(
                                  child: Text('Unexpected state encountered'),
                                );
                              },
                            ),

                            SizedBox(height: 30.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text("Upload Your CV",
                                        style: theme.textTheme.bodyMedium))),
                            SizedBox(height: 10.v),
                            //pick resume widget
                            BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                return Container(
                                    margin: EdgeInsets.only(right: 10.h),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 6.v, horizontal: 5.v),
                                    decoration: AppDecoration.outlineBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder7),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                context.read<AuthBloc>().add(
                                                    const AuthEvent
                                                        .selectResume());
                                              },
                                              child: Container(
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      color: ColorSchemes
                                                          .primaryColorScheme
                                                          .primary),
                                                  child: Center(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5),
                                                      child: Text('choose file',
                                                          style: theme.textTheme
                                                              .labelMedium
                                                              ?.copyWith(
                                                                  color: Colors
                                                                      .white)),
                                                    ),
                                                  ))),
                                          SizedBox(width: 5.v),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.v, right: 5.v),
                                            child: Text(
                                                state.resume == null
                                                    ? "No file chosen"
                                                    : "Image selected",
                                                style:
                                                    theme.textTheme.labelLarge),
                                          )
                                        ]));
                              },
                            ),

                            SizedBox(height: 30.v),

                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.h),
                                child: CustomTextFormField(
                                    title: 'Describe what you can do',
                                    textInputType: TextInputType.emailAddress,
                                    controller: whatYouDoController,
                                    hintText: "Input here",
                                    maxLines: 5,
                                    hintStyle: theme.textTheme.titleSmall!)),
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
                                                category: state.category?.name,
                                                yearsOfExperience:
                                                    yearsController.text,
                                                skill: state.skills?.name,
                                                resume: state.resume,
                                                describeYourRole:
                                                    whatYouDoController.text)));
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              JSCreateAccountPageFiveScreen()),
                                    );
                                  }),
                                  text: "Next",
                                );
                              },
                            ),
                            CustomElevatedButton(
                                text: 'Next',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              JSCreateAccountPageSixScreen()));
                                }),
                            // _buildNextButton(context),
                            SizedBox(height: 40.v),
                          ])));
                },
              ))),
    );
  }
}
