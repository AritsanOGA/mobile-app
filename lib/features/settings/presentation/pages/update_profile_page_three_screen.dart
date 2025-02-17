import 'package:artisan_oga/core/app_constants/app_assets_paths.dart';
import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/authentication/domain/entities/category_response_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/skill_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/widgets/custom_appbar.dart';

// ignore_for_file: must_be_immutable
class UpdateProfilePageThreeScreen extends HookWidget {
  UpdateProfilePageThreeScreen({Key? key}) : super(key: key);

  TextEditingController amountController = TextEditingController();

  TextEditingController inputHereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mimAmountController = useTextEditingController();
    final maxAmountController = useTextEditingController();
    final yearsController = useTextEditingController();

    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      useEffect(() {
        context.read<SettingBloc>().add(SettingEvent.getJobSeekerProfile());
        return null;
      }, []);
      context.read<AuthBloc>().add(AuthEvent.getCountries());
      context.read<AuthBloc>().add(AuthEvent.getState('161'));
      return null;
    }, []);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Settings',
            ),
            body: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.v),
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
                                        orElse: () => state.categoryList.first)
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
                                        items: (filter, infiniteScrollProps) =>
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
                          SizedBox(height: 27.v),
                          CustomTextFormField(
                              title: 'Years of Experience',
                              controller: yearsController,
                              hintText: "Enter number of years",
                              textInputType: TextInputType.number,
                              validator: FormValidation.stringValidation,
                              hintStyle: theme.textTheme.titleSmall!),
                          SizedBox(height: 30.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Min. Amount",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 15.v),
                          CustomTextFormField(
                              title: 'Password',
                              controller: mimAmountController,
                              hintText: "Enter Minimum Amount",
                              hintStyle: CustomTextStyles.bodyMediumGray700,
                              borderDecoration: TextFormFieldStyleHelper
                                  .underLinePrimaryContainer),
                          SizedBox(height: 13.v),
                          CustomTextFormField(
                              title: 'Password',
                              controller: maxAmountController,
                              hintText: "Enter Maximum Amount",
                              hintStyle: CustomTextStyles.bodyMediumGray700,
                              borderDecoration: TextFormFieldStyleHelper
                                  .underLinePrimaryContainer),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Max. Amount",
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Enter Maximum Amount",
                                  style: CustomTextStyles.bodyMediumGray700)),
                          SizedBox(height: 15.v),
                      
                          SizedBox(height: 13.v),
                          CustomElevatedButton(
                            text: "Save",
                            // margin: EdgeInsets.only(left: 1.h),
                            // buttonStyle:
                            //     CustomButtonStyles.fillSecondaryContainerTL24,
                            // buttonTextStyle: CustomTextStyles
                            //     .titleLargeOnPrimaryContainerSemiBold,
                            onPressed: () {},
                          ),
                          SizedBox(height: 25.v),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: 130.h,
                                  child: Divider(
                                      color: theme.colorScheme.primaryContainer
                                          .withOpacity(1))))
                        ]));
              },
            )));
  }
}
