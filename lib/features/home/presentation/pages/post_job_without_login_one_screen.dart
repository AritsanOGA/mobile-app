import 'package:artisan_oga/core/app_constants/app_assets_paths.dart';
import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/text_formatter.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_without_login_entity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/post_job_without_login_two_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../shared/widgets/custom_elevated_button.dart';

class PostJobWithoutLoginOneScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final jobTitleController = useTextEditingController();
    final hireesNumberController = useTextEditingController();
    final minSalaryController = useTextEditingController();
    final maxSalaryController = useTextEditingController();
    final applicationDeadlineController = useTextEditingController();
    final yearsOfExperienceController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      context.read<HomeBloc>().add(HomeEvent.getCategory());
      context.read<HomeBloc>().add(HomeEvent.getSkills('1'));
      context.read<HomeBloc>().add(HomeEvent.getCountries());
      context.read<HomeBloc>().add(HomeEvent.getState('161'));
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
                  padding: EdgeInsets.symmetric(horizontal: 22.h),
                  child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        SizedBox(height: 23.v),

                        CustomTextFormField(
                          title: 'Job title',
                          textInputType: TextInputType.name,
                          controller: jobTitleController,

                          validator: FormValidation.stringValidation,
                          hintText: 'Add job title',
                          //isBorderNone: true,
                        ),
                        SizedBox(height: 25.v),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return CustomDropDown<CategoryResponseEntity>(
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
                            Text('Select Required Skill',
                                style: CustomTextStyles
                                    .bodyMediumPrimaryContainer_1),
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
                                          backgroundColor:
                                              Colors.orange, // Button color
                                          foregroundColor:
                                              Colors.white, // Button text color
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
                                        // border: ,
                                        // border: InputBorder.none,
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
                        // CustomTextFormField(
                        //   title: 'Job Description',
                        //   hintText: 'Add a Job Description',
                        //   controller: jobDescriptionController,
                        //   validator: FormValidation.stringValidation,
                        //   isBorderNone: true,
                        // ),
                        // SizedBox(height: 23.v),
                        Row(
                          children: [
                            Expanded(
                              child: BlocBuilder<HomeBloc, HomeState>(
                                builder: (context, state) {
                                  return CustomDropDown<String>(
                                    title: 'Commute Type',
                                    items: state.workModeLists,
                                    selectedItem: state.workModes,
                                    itemLabel: (category) => category,
                                    onChanged: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.updateSelectedWorkMode(
                                                value ?? ''),
                                          );
                                    },
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 15.h),
                            Expanded(
                              child: BlocBuilder<HomeBloc, HomeState>(
                                builder: (context, state) {
                                  return CustomDropDown<String>(
                                    title: 'Job Type',
                                    items: state.jobtypeLists,
                                    selectedItem: state.jobTypes,
                                    itemLabel: (category) => category,
                                    onChanged: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.updateSelectedJobType(
                                                value ?? ''),
                                          );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 23.v),
                        Row(
                          children: [
                            Expanded(
                              child: BlocBuilder<HomeBloc, HomeState>(
                                builder: (context, state) {
                                  return CustomDropDown<String>(
                                    title: 'Skill Level',
                                    items: state.skillLevelLists,
                                    selectedItem: state.skillLevels,
                                    itemLabel: (category) => category,
                                    onChanged: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent.updateSelectedSkillLevel(
                                                value ?? ''),
                                          );
                                    },
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 15.h),
                            Expanded(
                              child: BlocBuilder<HomeBloc, HomeState>(
                                builder: (context, state) {
                                  return CustomDropDown<String>(
                                    title: 'Academic Qualification',
                                    items: state.levelOfEducationLists,
                                    selectedItem: state.educationLevels,
                                    itemLabel: (category) => category,
                                    onChanged: (value) {
                                      context.read<HomeBloc>().add(
                                            HomeEvent
                                                .updateSelectedEducationlevel(
                                                    value ?? ''),
                                          );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 23.v),
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextFormField(
                                title: 'How many Hires?',
                                textInputType: TextInputType.number,
                                validator: FormValidation.stringValidation,
                                hintText: 'How many do you want to hire?',
                                controller: hireesNumberController,
                              ),
                            ),
                            SizedBox(width: 15.h),
                            Expanded(
                              child: CustomTextFormField(
                                hintText: 'Years of Experience',
                                validator: FormValidation.stringValidation,
                                title: 'Years of Experience',
                                inputFormatters: [DateInputFormatter2()],
                                controller: yearsOfExperienceController,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 23.v),
                        Row(
                          children: [
                            Expanded(
                              child: CustomFormattedTextFormField(
                                title: ' Minimum Salary',
                                textInputType: TextInputType.number,
                                validator: FormValidation.stringValidation,
                                hintText: 'Enter Minimum Salary',
                                controller: minSalaryController,
                              ),
                            ),
                            SizedBox(width: 15.h),
                            Expanded(
                                child: CustomFormattedTextFormField(
                              textInputType: TextInputType.number,
                              title: ' Maximum Salary',
                              validator: FormValidation.stringValidation,
                              hintText: 'Enter Maximum Salary',
                              controller: maxSalaryController,
                            ))
                          ],
                        ),
                        SizedBox(height: 23.v),
                        CustomTextFormField(
                          ontap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                            );
                            applicationDeadlineController.text =
                                "${pickedDate!.year}-${pickedDate.month}-${pickedDate.day}";

                            context
                                .read<HomeBloc>()
                                .add(HomeEvent.updateSelectedDate(pickedDate));
                          },
                          hintText: 'YYYY-MM-DD',
                          validator: FormValidation.stringValidation,
                          readOnly: true,
                          title: 'Application Deadline Date',
                          controller: applicationDeadlineController,
                        ),
                        SizedBox(height: 23.v),
                        BlocSelector<HomeBloc, HomeState,
                            PostJobWithoutLoginEntity>(
                          selector: (state) {
                            return state.postJobWithoutLoginRequest;
                          },
                          builder: (context, postJobRequestWithoutLogin) {
                            return CustomElevatedButton(
                              onPressed: (() {
                                List<SkillResponseEntity> mySkill =
                                    state.skills;
                                List<String> result = mySkill
                                    .map((s) => s.name)
                                    .whereType<String>()
                                    .toList();
                                if (formKey.currentState?.validate() ?? false) {
                                  print(
                                      '${state.workMode} ${state.jobType} ${jobTitleController.text} ${state.category?.id}');
                                  context.read<HomeBloc>().add(
                                        HomeEvent
                                            .updatePostJobWithoutLoginRequest(
                                          postJobRequestWithoutLogin.copyWith(
                                            jobTitle: jobTitleController.text,
                                            workType: state.workMode,
                                            hireType: state.jobType,
                                            minAmount: int.parse(
                                                minSalaryController.text
                                                    .replaceAll(',', '')),
                                            maxAmount: int.parse(
                                                maxSalaryController.text
                                                    .replaceAll(',', '')),
                                            skillLevel: state.skillLevel,
                                            levelOfEducation:
                                                state.educationLevel,
                                            applicationDeadline:
                                                applicationDeadlineController
                                                    .text,
                                            yearsOfExperience: int.parse(
                                                yearsOfExperienceController
                                                    .text),
                                            position:
                                                hireesNumberController.text,
                                            category: state.category?.name,
                                            categoryId: state.category?.id ?? 1,
                                            skills: result,
                                          ),
                                        ),
                                      );

                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          duration: Durations.long1,
                                          child:
                                              PostJobWithoutLoginTwoScreen()));
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
