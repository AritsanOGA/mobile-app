import 'package:artisan_oga/core/app_constants/app_assets_paths.dart';
import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageFiveScreen extends HookWidget {
  final String email;
  JSCreateAccountPageFiveScreen({required this.email, Key? key})
      : super(key: key);
  void _onSkillsChanged(List<SkillResponseEntity> selectedSkills) {
    print("Selected Skills: ${selectedSkills.map((e) => e.name).join(', ')}");
    // Additional logic can be implemented here
  }

  @override
  Widget build(BuildContext context) {
    final yearsController = useTextEditingController();
    final whatYouDoController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      context.read<AuthBloc>().add(AuthEvent.getCategory());
      context.read<AuthBloc>().add(AuthEvent.getState('1'));
      return null;
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
                                    hintText: "Enter number of years",
                                    textInputType: TextInputType.number,
                                    validator: FormValidation.stringValidation,
                                    hintStyle: theme.textTheme.titleSmall!)),
                            SizedBox(height: 27.v),
                            Text('Select Skill',
                                style: CustomTextStyles
                                    .bodyMediumPrimaryContainer_1),
                            SizedBox(height: 7.v),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                padding:
                                    const EdgeInsets.only(left: 20, right: 5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appTheme.gray500, width: 0.8),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Theme(
                                        data: Theme.of(context).copyWith(
                                          primaryColor: Colors.purple,
                                          elevatedButtonTheme:
                                              ElevatedButtonThemeData(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.orange, // Button color
                                              foregroundColor: Colors
                                                  .white, // Button text color
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
                                          items:
                                              (filter, infiniteScrollProps) =>
                                                  state.skill,
                                          itemAsString:
                                              (SkillResponseEntity state) =>
                                                  state.name,
                                          decoratorProps:
                                              const DropDownDecoratorProps(
                                                  decoration: InputDecoration(
                                            enabled: false,
                                            border: InputBorder.none,
                                          )),
                                          onChanged: (List<SkillResponseEntity>?
                                              newValue) {
                                            context.read<AuthBloc>().add(
                                                  AuthEvent.updateSelectedSkill(
                                                      newValue!),
                                                );
                                          },
                                          filterFn: (item, filter) {
                                            return item.name
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
                                                        label: Text(item.name),
                                                        onDeleted: () {
                                                          selectedItems
                                                              .remove(item);
                                                          context
                                                              .read<AuthBloc>()
                                                              .add(
                                                                AuthEvent
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
                                          popupProps:
                                              PopupPropsMultiSelection.menu(
                                            checkBoxBuilder: (context, item,
                                                isDisabled, isSelected) {
                                              return Checkbox(
                                                value: isSelected,
                                                onChanged: isDisabled
                                                    ? null
                                                    : (value) {},
                                                activeColor: theme.primaryColor,
                                                fillColor: WidgetStateProperty
                                                    .resolveWith((states) {
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
                                                border: OutlineInputBorder(),
                                                hintText: 'Search...',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ])),
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
                                                    : "File selected",
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
                                    hintText: "Enter what you can do",
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
                                      List<SkillResponseEntity> countries =
                                          state.skills;
                                      String result = countries
                                          .map((country) => country.name)
                                          .where((name) => name != null)
                                          .join(', ');
                                      print('resey ${result}');
                                      context.read<AuthBloc>().add(AuthEvent
                                          .updateRegisterJobSeekerRequest(
                                              registerJobSeekerRequest.copyWith(
                                                  category: state.category?.id
                                                          .toString() ??
                                                      '',
                                                  yearsOfExperience:
                                                      yearsController.text,
                                                  skill: result,
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
