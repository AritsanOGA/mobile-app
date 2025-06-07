import 'package:artisan_oga/core/app_constants/app_assets_paths.dart';
import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/edit_job_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/edit_job_two_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_radio_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../shared/widgets/custom_elevated_button.dart';

class EditJobOneScreen extends HookWidget {
  final EmployerJobResponseEntity employerJobResponseEntity;

  EditJobOneScreen({super.key, required this.employerJobResponseEntity});
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
          // hasBackButton: false,
          title: 'Edit job',
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            jobTitleController.text = employerJobResponseEntity.jobTitle ?? '';
            jobDescriptionController.text =
                employerJobResponseEntity.jobDescription ?? '';

            return Form(
              key: formKey,
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 22.h),
                  child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        //    SizedBox(height: 10.v),
                        // Align(
                        //     alignment: Alignment.centerLeft,
                        //     child: Padding(
                        //         padding: EdgeInsets.only(left: 1.h),
                        //         child: Text("Fields for Job Creation",
                        //             style: CustomTextStyles
                        //                 .titleMediumPrimaryContainerMedium))),
                        //   SizedBox(height: 23.v),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Select Required Skill',
                              style: CustomTextStyles.titleMediumMedium18,
                            ),
                            SizedBox(height: 7.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Theme(
                                    data: Theme.of(context).copyWith(
                                      primaryColor: Colors.purple,
                                      elevatedButtonTheme:
                                          ElevatedButtonThemeData(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.orange,
                                          foregroundColor: Colors.white,
                                        ),
                                      ),
                                      textButtonTheme: TextButtonThemeData(
                                        style: TextButton.styleFrom(
                                          foregroundColor:
                                              Colors.blue, // Text color
                                        ),
                                      ),
                                    ),
                                    child: DropdownSearch<
                                        SkillResponseEntity>.multiSelection(
                                      mode: Mode.form,
                                      items: (filter, infiniteScrollProps) =>
                                          state.skill,
                                      itemAsString:
                                          (SkillResponseEntity state) =>
                                              state.name ?? '',
                                      decoratorProps: DropDownDecoratorProps(
                                          decoration: InputDecoration(
                                        enabled: false,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: appTheme.blueGray10001,
                                              width: 1.5),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: appTheme.blueGray10001,
                                              width: 2),
                                        ),
                                      )),
                                      onChanged: (List<SkillResponseEntity>?
                                          newValue) {
                                        context.read<HomeBloc>().add(
                                              HomeEvent.updateSelectedSkill(
                                                  newValue!),
                                            );
                                      },
                                      filterFn: (item, filter) {
                                        return item.name!
                                            .toLowerCase()
                                            .contains(filter.toLowerCase());
                                      },
                                      suffixProps: DropdownSuffixProps(
                                        dropdownButtonProps:
                                            DropdownButtonProps(
                                          selectedIcon: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: SvgPicture.asset(
                                                AppAsset.dropdown),
                                          ),
                                        ),
                                      ),
                                      dropdownBuilder:
                                          (context, selectedItems) {
                                        return Wrap(
                                          spacing: 8.0,
                                          children: selectedItems
                                              .map((item) => Chip(
                                                    label:
                                                        Text(item.name ?? ''),
                                                    onDeleted: () {
                                                      selectedItems
                                                          .remove(item);
                                                      context
                                                          .read<HomeBloc>()
                                                          .add(
                                                            HomeEvent
                                                                .updateSelectedSkill(
                                                                    selectedItems),
                                                          );
                                                    },
                                                  ))
                                              .toList(),
                                        );
                                      },
                                      compareFn: (item, selectedItem) {
                                        return item.id == selectedItem.id;
                                      },
                                      popupProps: PopupPropsMultiSelection.menu(
                                        checkBoxBuilder: (context, item,
                                            isDisabled, isSelected) {
                                          return Checkbox(
                                            value: isSelected,
                                            onChanged:
                                                isDisabled ? null : (value) {},
                                            activeColor: theme.primaryColor,
                                            fillColor:
                                                WidgetStateProperty.resolveWith(
                                                    (states) {
                                              if (states.contains(
                                                  WidgetState.selected)) {
                                                return theme.primaryColor;
                                              }
                                              return Colors.white;
                                            }),
                                            checkColor: Colors.white,
                                            side: BorderSide(
                                              color: isDisabled
                                                  ? Colors.grey
                                                  : Colors.orange,
                                              width: 2,
                                            ),
                                          );
                                        },
                                        searchFieldProps: TextFieldProps(
                                          decoration: InputDecoration(
                                            border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                      appTheme.blueGray10001),
                                            ),
                                            hintText: 'Search...',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                          ],
                        ),

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
                        BlocSelector<HomeBloc, HomeState, EditJobEntity>(
                          selector: (state) {
                            return state.editJobRequest;
                          },
                          builder: (context, editJobRequest) {
                            return CustomElevatedButton(
                              onPressed: (() {
                                print('cat ${state.category?.id.toString()}');

                                List<SkillResponseEntity> countries =
                                    state.skills;
                                List<String> result = countries
                                    .map((country) => country.name ?? '')
                                    .toList();

                                String skillId = countries
                                    .map((country) => country.id)
                                    .where((name) => name != null)
                                    .join(', ');
                                if (formKey.currentState?.validate() ?? false) {
                                  print(
                                      '${state.workMode} ${state.jobType} ${jobTitleController.text} ${state.category?.id} ${state.categoryList[0].id}');
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateEditJobRequest(
                                          editJobRequest.copyWith(
                                              jobTitle: jobTitleController.text,
                                              workType: state.workMode,
                                              hireType: state.jobType,
                                              category: state.category?.name,
                                              categoryId: state.category?.id
                                                          .toString() ==
                                                      null
                                                  ? state.categoryList[0].id
                                                      .toString()
                                                  : state.category?.id
                                                      .toString(),
                                              skills: result,
                                              jobSkillId: skillId,
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
                                          child: EditPostJobTwoScreen(
                                            employerJobResponseEntity:
                                                employerJobResponseEntity,
                                          )));
                                }
                              }),
                              text: "Next",
                            );
                          },
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 40,
                        ),
                      ]))),
            );
          },
        ));
  }
}
