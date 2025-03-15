import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_data_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> searchDialog(
  context,
  TextEditingController locationController,
) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return BlocBuilder<AuthBloc, AuthState>(
        bloc: context.read<AuthBloc>()
          ..add(AuthEvent.searchJobs(
              SearchJobDataEntity(category: 1, location: '', skill: ''))),
        builder: (context, state) {
          return AlertDialog(
              titlePadding: EdgeInsets.zero,
              actionsPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              content: Container(
                height: 400.v,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: AppColors.kwhite,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomDropDown<CategoryResponseEntity>(
                      title: 'Select Job Category',
                      items: state.categoryList,
                      selectedItem: state.categoryList.isNotEmpty
                          ? state.categoryList.firstWhere(
                              (category) =>
                                  category.id == (state.category?.id ?? 1),
                              orElse: () => state.categoryList.first)
                          : CategoryResponseEntity(id: 1, name: 'Fashion'),
                      itemLabel: (category) => category.name,
                      onChanged: (value) {
                        context.read<AuthBloc>().add(
                              AuthEvent.updateSelectedCategory(value!),
                            );
                        context.read<AuthBloc>().add(
                              AuthEvent.updateSkill(SkillResponseEntity(
                                  id: 0, name: '', categoryId: 0)),
                            );

                        context.read<AuthBloc>().add(
                              AuthEvent.getSkills(null.toString()),
                            );
                        context.read<AuthBloc>().add(
                              AuthEvent.getSkills(value.id.toString()),
                            );
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomDropDown<SkillResponseEntity>(
                      title: 'Select Job Skill',
                      items: state.skill,
                      selectedItem: state.skill.isNotEmpty
                          ? state.skill.firstWhere(
                              (category) =>
                                  category.id == (state.category?.id ?? 1),
                              orElse: () => state.skill.first)
                          : SkillResponseEntity(id: 1, name: '', categoryId: 0),
                      itemLabel: (category) => category.name ?? '',
                      onChanged: (value) {
                        context.read<AuthBloc>().add(
                              AuthEvent.updateSkill(value!),
                            );
                      },
                    ),
//                     CustomDropDown<SkillResponseEntity>(
//   title: 'Select Job Skill',
//   items: state.skill,
//   selectedItem: state.skill.isNotEmpty
//       ? state.skill.firstWhere(
//           (category) =>
//               category.id == (state.category?.id ?? 1),
//           orElse: () => null) // ✅ Now returns `null` instead of auto-selecting first skill
//       : null, // ✅ Ensures it's empty if no skills are available
//   itemLabel: (category) => category.name,
//   onChanged: (value) {
//     context.read<AuthBloc>().add(
//           AuthEvent.updateSkill(value),
//         );
//   },
// ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomTextFormField(
                      title: 'Location',
                      controller: locationController,
                      hintText: "Enter location",
                      hintStyle: theme.textTheme.titleSmall!,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        CustomElevatedButton(
                          width: 180.v,
                          // isBusy: state.searchJobState == SearchJobState.loading,
                          onPressed: () {
                            Navigator.pop(context);
                            context.read<AuthBloc>().add(
                                  AuthEvent.searchJobs(SearchJobDataEntity(
                                      category: state.category?.id ?? 1,
                                      location: locationController.text,
                                      skill: state.singleSkill?.name ?? '')),
                                );
                          },
                          text: "Search",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ));
        },
      );
    },
  );
}
