import 'package:artisan_oga/core/app_constants/app_assets_paths.dart';
import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/widgets/custom_appbar.dart';

// ignore: must_be_immutable
class UpdateProfilePageThreeScreen extends HookWidget {
  final String compensationType;
  UpdateProfilePageThreeScreen({
    Key? key,
    required this.compensationType,
  }) : super(key: key);

  TextEditingController amountController = TextEditingController();

  TextEditingController inputHereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mimAmountController = useTextEditingController();
    final maxAmountController = useTextEditingController();
    final yearsController = useTextEditingController();

    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      context.read<AuthBloc>().add(const AuthEvent.getUserData());

      context.read<AuthBloc>().add(AuthEvent.getCategory());
      context.read<AuthBloc>().add(AuthEvent.getSkills('1'));
      return null;
    }, []);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Edit Profile',
            ),
            body: BlocListener<SettingBloc, SettingState>(
              bloc: context.read<SettingBloc>()
                ..add(SettingEvent.getCandidateProfile(
                    UserService().authData?.user.identity ?? '')),
              listener: (context, settingState) {
                if (settingState.getCandidateProfileState ==
                    ViewState.success) {
                  final profile = settingState.candidateProfileEntity;
                  print('my own profile $profile');
                  if (profile != null) {
                    mimAmountController.text = profile.profiles.minAmount ?? '';
                    maxAmountController.text = profile.profiles.maxAmount ?? '';
                    yearsController.text =
                        profile.profiles.workExperience ?? '';
                    // dateOfBirthController.text =
                    //     profile.dateOfBirth.toString() ?? '';
                  }
                }
                if (settingState.updateJobSeekerProfileState ==
                    UpdateJobSeekerProfileState.success) {
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.jobSeekerNavBarScreen);
                } else if (settingState.updateJobSeekerProfileState ==
                    UpdateJobSeekerProfileState.failure) {
                  ToastUtils.showRedToast(settingState.errorMessage ?? '');
                }
                ;
              },
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 12.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            compensationType == 'Salary'
                                ? Column(
                                    children: [
                                      CustomTextFormField(
                                        title: 'Min Amount ',
                                        titleStyle: CustomTextStyles
                                            .titleMediumMedium18,
                                        hintText: 'Enter Minimum Amount',
                                        controller: mimAmountController,
                                        validator:
                                            FormValidation.stringValidation,
                                        isBorderNone: true,
                                      ),
                                      SizedBox(height: 25.v),
                                      CustomTextFormField(
                                        title: 'Max Amount',
                                        titleStyle: CustomTextStyles
                                            .titleMediumMedium18,
                                        hintText: 'Enter Maximum Amount',
                                        controller: maxAmountController,
                                        validator:
                                            FormValidation.stringValidation,
                                        isBorderNone: true,
                                      ),
                                    ],
                                  )
                                : SizedBox(),
                            SizedBox(height: 25.v),
                            BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                return CustomDropDown<CategoryResponseEntity>(
                                  title: 'Select Job Category',
                                  titleStyle:
                                      CustomTextStyles.titleMediumMedium18,
                                  isBorderNone: true,
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
                            SizedBox(height: 25.v),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Select Required Skill',
                                  style: CustomTextStyles.titleMediumMedium18,
                                ),
                                SizedBox(height: 7.v),
                                BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Theme(
                                            data: Theme.of(context).copyWith(
                                              primaryColor: Colors.purple,
                                              elevatedButtonTheme:
                                                  ElevatedButtonThemeData(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors
                                                      .orange, // Button color
                                                  foregroundColor: Colors
                                                      .white, // Button text color
                                                ),
                                              ),
                                              textButtonTheme:
                                                  TextButtonThemeData(
                                                style: TextButton.styleFrom(
                                                  foregroundColor:
                                                      Colors.blue, // Text color
                                                ),
                                              ),
                                            ),
                                            child: DropdownSearch<
                                                SkillResponseEntity>.multiSelection(
                                              mode: Mode.form,
                                              items: (filter,
                                                      infiniteScrollProps) =>
                                                  state.skill,
                                              itemAsString:
                                                  (SkillResponseEntity state) =>
                                                      state.name ?? '',
                                              decoratorProps:
                                                  DropDownDecoratorProps(
                                                      decoration:
                                                          InputDecoration(
                                                enabled: false,
                                                // border: InputBorder.none,
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: appTheme
                                                          .blueGray10001,
                                                      width: 1.5),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: appTheme
                                                          .blueGray10001,
                                                      width: 2),
                                                ),
                                              )),
                                              onChanged:
                                                  (List<SkillResponseEntity>?
                                                      newValue) {
                                                context.read<AuthBloc>().add(
                                                      AuthEvent
                                                          .updateSelectedSkill(
                                                              newValue!),
                                                    );
                                              },
                                              filterFn: (item, filter) {
                                                return item.name!
                                                    .toLowerCase()
                                                    .contains(
                                                        filter.toLowerCase());
                                              },
                                              suffixProps: DropdownSuffixProps(
                                                dropdownButtonProps:
                                                    DropdownButtonProps(
                                                  selectedIcon: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
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
                                                            label: Text(
                                                                item.name ??
                                                                    ''),
                                                            onDeleted: () {
                                                              selectedItems
                                                                  .remove(item);
                                                              context
                                                                  .read<
                                                                      AuthBloc>()
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
                                                return item.id ==
                                                    selectedItem.id;
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
                                                    activeColor:
                                                        theme.primaryColor,
                                                    fillColor:
                                                        WidgetStateProperty
                                                            .resolveWith(
                                                                (states) {
                                                      if (states.contains(
                                                          WidgetState
                                                              .selected)) {
                                                        return theme
                                                            .primaryColor;
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
                                                searchFieldProps:
                                                    TextFieldProps(
                                                  decoration: InputDecoration(
                                                    border:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: appTheme
                                                              .blueGray10001),
                                                    ),
                                                    hintText: 'Search...',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]);
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 25.v),
                            CustomTextFormField(
                                title: 'Years of Experience',
                                titleStyle:
                                    CustomTextStyles.titleMediumMedium18,
                                isBorderNone: true,
                                controller: yearsController,
                                hintText: "Enter number of years",
                                textInputType: TextInputType.number,
                                validator: FormValidation.stringValidation,
                                hintStyle: theme.textTheme.titleSmall!),
                            SizedBox(height: 50.v),
                            BlocBuilder<SettingBloc, SettingState>(
                              builder: (context, settingState) {
                                return BlocSelector<SettingBloc, SettingState,
                                    UpdateJobSeekerProfileEntity>(
                                  selector: (state) =>
                                      state.updateJobSeekerProfileRequest,
                                  builder: (context, updateJobSeekerRequest) {
                                    return BlocBuilder<AuthBloc, AuthState>(
                                      builder: (context, authState) {
                                        return CustomElevatedButton(
                                          isBusy: settingState
                                                  .updateJobSeekerProfileState ==
                                              UpdateJobSeekerProfileState
                                                  .loading,
                                          onPressed: () {
                                           
                                            if (formKey.currentState
                                                    ?.validate() ??
                                                false) {
                                              List<String> mySkill = authState
                                                  .skills
                                                  .map((e) => e.name ?? '')
                                                  .toList();

                                              compensationType == 'Salary'
                                                  ? context
                                                      .read<SettingBloc>()
                                                      .add(
                                                        SettingEvent
                                                            .updateJobSeekerProfile(
                                                          updateJobSeekerRequest
                                                              .copyWith(
                                                            maxAmount:
                                                                maxAmountController
                                                                    .text,
                                                            minAmount:
                                                                mimAmountController
                                                                    .text,
                                                            category: authState
                                                                .category?.name,
                                                            yearsOfExperience:
                                                                yearsController
                                                                    .text,
                                                            skill: mySkill,
                                                          ),
                                                        ),
                                                      )
                                                  : context
                                                      .read<SettingBloc>()
                                                      .add(
                                                        SettingEvent
                                                            .updateJobSeekerProfile(
                                                          updateJobSeekerRequest
                                                              .copyWith(
                                                            category: authState
                                                                .category?.name,
                                                            yearsOfExperience:
                                                                yearsController
                                                                    .text,
                                                            skill: mySkill,
                                                          ),
                                                        ),
                                                      );
                                            }
                                          },
                                          text: "Submit",
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 50.v),
                          ])),
                ),
              ),
            )));
  }
}
