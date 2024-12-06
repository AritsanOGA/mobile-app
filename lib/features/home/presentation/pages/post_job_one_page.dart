import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/post_job_two_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_radio_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../shared/widgets/custom_elevated_button.dart';

class PostJobOnePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final jobTitleController = useTextEditingController();
    final jobDescriptionController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      context.read<HomeBloc>().add(HomeEvent.getCategory());
      context.read<HomeBloc>().add(HomeEvent.getSkills('1'));
      return null;
    }, []);
    return Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          hasBackButton: false,
          title: 'Post job',
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Form(
              key: formKey,
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        //    SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("Fields for Job Creation",
                                    style: CustomTextStyles
                                        .titleMediumPrimaryContainerMedium))),
                        SizedBox(height: 23.v),
                        CustomTextFormField(
                          title: 'Job title*',
                          textInputType: TextInputType.name,
                          controller: jobTitleController,
                          titleStyle: CustomTextStyles.titleMediumMedium18,
                          validator: FormValidation.stringValidation,
                          hintText: 'Add job title',
                          isBorderNone: true,
                        ),
                        SizedBox(height: 25.v),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return CustomDropDown<CategoryResponseEntity>(
                              isBorderNone: true,
                              titleStyle: CustomTextStyles.titleMediumMedium18,
                              title: 'Select Job Category',
                              items: state.categoryList,
                              selectedItem: state.categoryList.isNotEmpty
                                  ? state.categoryList.firstWhere(
                                      (category) =>
                                          category.id == (state.category?.id),
                                      orElse: () => state.categoryList.first)
                                  : CategoryResponseEntity(
                                      id: 1, name: 'Fashion'),
                              itemLabel: (category) => category.name,
                              onChanged: (value) {
                                context.read<HomeBloc>().add(
                                      HomeEvent.updateSelectedCategory(value!),
                                    );
                                print('${value.id.toString()}');
                                context.read<HomeBloc>().add(
                                      HomeEvent.getSkills(value.id.toString()),
                                    );
                              },
                            );
                          },
                        ),
                        SizedBox(height: 25.v),
                        BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                          return CustomDropDown<SkillResponseEntity>(
                            isBorderNone: true,
                            titleStyle: CustomTextStyles.titleMediumMedium18,
                            title: 'Select Skill',
                            items: state.skill,
                            selectedItem: state.skill.isNotEmpty
                                ? state.skill.firstWhere(
                                    (skills) => skills.id == (state.skills?.id),
                                    orElse: () => state.skill.first)
                                : SkillResponseEntity(
                                    id: 1, name: 'Corser', categoryId: 1),
                            itemLabel: (skill) => skill.name,
                            onChanged: (value) {
                              context.read<HomeBloc>().add(
                                    HomeEvent.updateSelectedSkill(value!),
                                  );
                            },
                          );
                        }),
                        SizedBox(height: 25.v),
                        CustomTextFormField(
                          title: 'Job Description',
                          titleStyle: CustomTextStyles.titleMediumMedium18,
                          hintText: 'Add a Job Description',
                          controller: jobDescriptionController,
                          validator: FormValidation.stringValidation,
                          isBorderNone: true,
                        ),
                        SizedBox(height: 23.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("Work Type",
                                    style:
                                        CustomTextStyles.titleMediumMedium18))),
                        SizedBox(height: 18.v),
                        Padding(
                            padding: EdgeInsets.only(right: 8.h),
                            child: CustomRadioButton(
                                width: 30.0,
                                text: "Onsite",
                                value: state.workModeList[0],
                                groupValue: state.workMode,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedWorkMode(value),
                                      );
                                })),
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, right: 6.h),
                            child: CustomRadioButton(
                                text: "Hybrid",
                                value: state.workModeList[1],
                                groupValue: state.workMode,
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedWorkMode(value),
                                      );
                                })),
                        Padding(
                            padding: EdgeInsets.only(top: 10.v),
                            child: CustomRadioButton(
                                text: "Remote",
                                value: state.workModeList[2],
                                groupValue: state.workMode,
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedWorkMode(value),
                                      );
                                })),
                        SizedBox(height: 27.v),
                        Divider(),
                        SizedBox(height: 23.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text("Job Type",
                                    style:
                                        CustomTextStyles.titleMediumMedium18))),
                        SizedBox(height: 18.v),
                        Padding(
                            padding: EdgeInsets.only(right: 14.h),
                            child: CustomRadioButton(
                                text: "Contract",
                                value: state.jobtypeList[0],
                                groupValue: state.jobType,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedJobType(value),
                                      );
                                })),
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, right: 12.h),
                            child: CustomRadioButton(
                                text: "Full Time",
                                value: state.jobtypeList[1],
                                groupValue: state.jobType,
                                padding: EdgeInsets.symmetric(vertical: 1.v),
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedJobType(value),
                                      );
                                })),
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, right: 7.h),
                            child: CustomRadioButton(
                                text: "Part Time",
                                value: state.jobtypeList[2],
                                groupValue: state.jobType,
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedJobType(value),
                                      );
                                })),
                        Padding(
                            padding: EdgeInsets.only(top: 11.v),
                            child: CustomRadioButton(
                                text: "Temporary",
                                value: state.jobtypeList[3],
                                groupValue: state.jobType,
                                onChange: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateSelectedJobType(value),
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
                                if (formKey.currentState?.validate() ?? false) {
                                  print(
                                      '${state.workMode} ${state.jobType} ${jobTitleController.text}');
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updatePostJobRequest(
                                          postJobRequest.copyWith(
                                              jobTitle: jobTitleController.text,
                                              workType: state.workMode,
                                              hireType: state.jobType,
                                              category: state.category?.name,
                                              categoryId: state.category?.id,
                                              skills: state.skills?.name,
                                              jobDescription:
                                                  jobDescriptionController
                                                      .text),
                                        ),
                                      );

                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          duration: Durations.long1,
                                          child: PostJobTwoScreen()));
                                }
                              }),
                              text: "Next",
                            );
                          },
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 20,
                        ),
                      ]))),
            );
          },
        ));
  }
}
