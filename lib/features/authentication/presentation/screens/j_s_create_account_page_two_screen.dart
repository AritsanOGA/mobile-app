import 'package:artisan_oga/core/app_constants/app_assets_paths.dart';
import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/text_formatter.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JSCreateAccountPagetTwoScreen extends HookWidget {
  final String email;
  JSCreateAccountPagetTwoScreen({required this.email, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final streetaddressController = useTextEditingController();
    final cityController = useTextEditingController();
    final dateOfBirthController = useTextEditingController();
    final phoneController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      context.read<AuthBloc>().add(AuthEvent.getCountries());
      context.read<AuthBloc>().add(AuthEvent.getState('161'));
      return null;
    }, []);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
            // resizeToAvoidBottomInset: false,
            body: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return SingleChildScrollView(
                    child: Form(
                  key: formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 12.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.v),
                            CustomTextFormField(
                                title: 'Phone Number',
                                controller: phoneController,
                                hintText: "e.g 703 345 1345",
                                textInputType: TextInputType.phone,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(11),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                validator: FormValidation.phoneValidation,
                                hintStyle: theme.textTheme.titleSmall!),
                            SizedBox(height: 30.v),
                            CustomTextFormField(
                                title: 'Street Address',
                                textInputType: TextInputType.name,
                                controller: streetaddressController,
                                validator: FormValidation.stringValidation,
                                hintText: "Enter Street Address",
                                hintStyle: theme.textTheme.titleSmall!),
                            SizedBox(height: 30.v),
                            Text('Country',
                                style: CustomTextStyles
                                    .bodyMediumPrimaryContainer_1),
                            SizedBox(height: 7.v),
                            BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                              return Container(
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
                                        DropdownSearch<CountryResponseEntity>(
                                          items:
                                              (filter, infiniteScrollProps) =>
                                                  state.countries,
                                          itemAsString:
                                              (CountryResponseEntity state) =>
                                                  state.name ?? '',
                                          decoratorProps:
                                              const DropDownDecoratorProps(
                                                  decoration: InputDecoration(
                                            border: InputBorder.none,
                                          )),
                                          onChanged: (CountryResponseEntity?
                                              newValue) {
                                            context.read<AuthBloc>().add(
                                                  AuthEvent
                                                      .updateSelectedCountry(
                                                          newValue!),
                                                );
                                            context.read<AuthBloc>().add(
                                                  AuthEvent.getState(
                                                      newValue.id.toString()),
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
                                          compareFn: (item, selectedItem) {
                                            return item.id == selectedItem.id;
                                          },
                                          dropdownBuilder:
                                              (context, selectedItem) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text(
                                                state.country?.name ??
                                                    'Select Country',
                                                style: selectedItem == null
                                                    ? CustomTextStyles
                                                        .titleSmallPrimaryContainer_1
                                                    : CustomTextStyles
                                                        .titleSmallPrimaryContainer_1,
                                              ),
                                            );
                                          },
                                          popupProps: const PopupProps.menu(
                                            showSearchBox: true,
                                            searchFieldProps: TextFieldProps(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: 'Search...',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]));
                            }),
                            SizedBox(height: 30.v),
                            Text('State of Residence',
                                style: CustomTextStyles
                                    .bodyMediumPrimaryContainer_1),
                            SizedBox(height: 7.v),
                            BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                              return Container(
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
                                        DropdownSearch<StateResponseEntity>(
                                          items:
                                              (filter, infiniteScrollProps) =>
                                                  state.states,
                                          itemAsString:
                                              (StateResponseEntity state) =>
                                                  state.name ?? '',
                                          decoratorProps:
                                              const DropDownDecoratorProps(
                                                  decoration: InputDecoration(
                                            border: InputBorder.none,
                                          )),
                                          onChanged:
                                              (StateResponseEntity? newValue) {
                                            context.read<AuthBloc>().add(
                                                  AuthEvent.updateSelectedState(
                                                      newValue!),
                                                );
                                          },
                                          compareFn: (item, selectedItem) {
                                            return item.id == selectedItem.id;
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
                                              (context, selectedItem) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text(
                                                state.state?.name ??
                                                    'Select State',
                                                style: selectedItem == null
                                                    ? CustomTextStyles
                                                        .titleSmallPrimaryContainer_1
                                                    : CustomTextStyles
                                                        .titleSmallPrimaryContainer_1,
                                              ),
                                            );
                                          },
                                          popupProps: const PopupProps.menu(
                                            showSearchBox: true,
                                            searchFieldProps: TextFieldProps(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText: 'Search...',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]));
                            }),
                            SizedBox(height: 30.v),
                            BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                return CustomDropDown<String>(
                                  title: 'Job Type',
                                  items: state.jobTypeList,
                                  selectedItem: state.jobType,
                                  itemLabel: (gender) => gender,
                                  onChanged: (value) {
                                    context.read<AuthBloc>().add(
                                          AuthEvent.updateSelectedJobType(
                                              value ?? ''),
                                        );
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 30.v),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    hintText: 'MM/DD/YYYY',
                                    title: 'Date of Birth',
                                    textInputType: TextInputType.number,
                                    inputFormatters: [DateInputFormatter()],
                                    controller: dateOfBirthController,
                                    validator: FormValidation.stringValidation,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.h,
                                ),
                                Expanded(
                                  child: CustomTextFormField(
                                      title: 'City',
                                      controller: cityController,
                                      textInputType: TextInputType.name,
                                      validator:
                                          FormValidation.stringValidation,
                                      hintText: "Enter City",
                                      hintStyle: theme.textTheme.titleSmall!),
                                ),
                              ],
                            ),
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
                                      print(
                                          'date ${dateOfBirthController.text}');
                                      context.read<AuthBloc>().add(AuthEvent
                                          .updateRegisterJobSeekerRequest(
                                              registerJobSeekerRequest.copyWith(
                                                  phoneNumber:
                                                      phoneController.text,
                                                  streetAddress:
                                                      streetaddressController
                                                          .text,
                                                  state: state.state?.name ??
                                                      state.states.first.name,
                                                  country: state.country?.id
                                                          .toString() ??
                                                      '161',
                                                  jobType: state.jobType,
                                                  city: cityController.text,
                                                  dateOFBirth:
                                                      dateOfBirthController
                                                          .text)));
                                      Navigator.pushNamed(
                                          context,
                                          AppRoutes
                                              .jSCreateAccountPageThreeScreen,
                                          arguments: email);
                                    }
                                  }),
                                  text: "Next",
                                );
                              },
                            ),
                            SizedBox(height: 40.v),
                          ])),
                ));
              },
            )));
  }
}
