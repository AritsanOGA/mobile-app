import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
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
  final String email;
  JSCreateAccountPageFiveScreen({required this.email, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final yearsController = useTextEditingController();
    final whatYouDoController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      context.read<AuthBloc>().add(AuthEvent.getCategory());
    }, []);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
            body: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Form(
                  key: formKey,
                  child: Container(
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
                                return CustomDropDown<CategoryResponseEntity>(
                                  title: 'Select Job Category',
                                  items: state.categoryList,
                                  selectedItem: state.categoryList.isNotEmpty
                                      ? state.categoryList.firstWhere(
                                          (category) =>
                                              category.id ==
                                              (state.category?.id ?? 1),
                                          orElse: () =>
                                              state.categoryList.first)
                                      : CategoryResponseEntity(
                                          id: 1, name: 'Fashion'),
                                  itemLabel: (category) => category.name,
                                  onChanged: (value) {
                                    context.read<AuthBloc>().add(
                                          AuthEvent.updateSelectedCategory(
                                              value!),
                                        );
                                    print('${value.id.toString()}');
                                    context.read<AuthBloc>().add(
                                          AuthEvent.getSkills(
                                              value.id.toString()),
                                        );
                                  },
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
                                    validator: FormValidation.stringValidation,
                                    hintStyle: theme.textTheme.titleSmall!)),
                            SizedBox(height: 27.v),
                            BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                              return CustomDropDown<SkillResponseEntity>(
                                title: 'Select Skill',
                                items: state.skill,
                                selectedItem: state.skill.isNotEmpty
                                    ? state.skill.firstWhere(
                                        (skills) =>
                                            skills.id ==
                                            (state.skills?.id ?? 29),
                                        orElse: () => state.skill.first)
                                    : SkillResponseEntity(
                                        id: 1, name: 'Corset', categoryId: 1),
                                itemLabel: (skill) => skill.name,
                                onChanged: (value) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.updateSelectedSkill(value!),
                                      );
                                },
                              );
                            }),
                            SizedBox(height: 30.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text("Upload Your CV",
                                        style: theme.textTheme.bodyMedium))),
                            SizedBox(height: 10.v),
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
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      88,
                                                                      49,
                                                                      49))),
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
                                    textInputType: TextInputType.name,
                                    controller: whatYouDoController,
                                    validator: FormValidation.stringValidation,
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
                                    if (formKey.currentState?.validate() ??
                                        false) {
                                      context.read<AuthBloc>().add(AuthEvent
                                          .updateRegisterJobSeekerRequest(
                                              registerJobSeekerRequest.copyWith(
                                                  category:
                                                      state.category?.name,
                                                  yearsOfExperience:
                                                      yearsController.text,
                                                  skill: state.skills?.name,
                                                  resume: state.resume,
                                                  describeYourRole:
                                                      whatYouDoController
                                                          .text)));
                                      Navigator.pushNamed(
                                          context,
                                          AppRoutes
                                              .jSCreateAccountPageSixScreen,
                                          arguments: email);
                                    }
                                  }),
                                  text: "Next",
                                );
                              },
                            ),
                            SizedBox(height: 40.v),
                          ]))),
                );
              },
            )));
  }
}
