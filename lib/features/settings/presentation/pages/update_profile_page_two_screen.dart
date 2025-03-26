import 'package:artisan_oga/core/app_constants/app_assets_paths.dart';
import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpdateProfilePageTwoScreen extends HookWidget {
  UpdateProfilePageTwoScreen({Key? key}) : super(key: key);
  var image;
  @override
  Widget build(BuildContext context) {
    final aboutMeTextController = useTextEditingController();
    final addressController = useTextEditingController();
    final phoneNoTextController = useTextEditingController();
    final cityController = useTextEditingController();
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
              title: 'Edit Profile',
            ),
            body: BlocConsumer<SettingBloc, SettingState>(
              listener: (context, state) {
                if (state.getJobSeekerProfileState ==
                    GetJobSeekerProfileState.success) {
                  final profile = state.getJobSeekerResponseEntity;
                  if (profile != null) {
                    // fullNameEditTextController.text = profile.fullName ?? '';
                    // emailController.text = profile.email ?? '';
                    // phoneNoTextController.text = profile.phone ?? '';
                    // dateOfBirthController.text = profile.dateOfBirth ?? '';
                  }
                }
                if (state.updateJobSeekerProfileState ==
                    UpdateJobSeekerProfileState.success) {
                  ToastUtils.showGreenToast('Profile Update Successfully');
                  Navigator.pushNamed(context, AppRoutes.employerNavBarScreen);
                }
                if (state.updateJobSeekerProfileState ==
                    UpdateJobSeekerProfileState.failure) {
                  ToastUtils.showRedToast('Something went wrong');
                }
              },
              builder: (context, state) {
                if (state.getEmployerProfileState ==
                    GetEmployerProfileState.loading) {
                  return Center(child: CircularProgressIndicator());
                }

                if (state.getEmployerProfileState ==
                    GetEmployerProfileState.failure) {
                  return Center(child: Text('Error: '));
                }

                if (state.getEmployerProfileState ==
                    GetEmployerProfileState.success) {
                  final nameController = TextEditingController(
                      text: state.getEmployerResponseEntity?.fullName);
                  final emailController = TextEditingController(
                      text: state.getEmployerResponseEntity?.companyName);
                  final phoneController = TextEditingController(
                      text: state.getEmployerResponseEntity?.streetAddress);
                }
                return Form(
                  key: formKey,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16.v),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 25.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomTextFormField(
                                        title: 'About Me',
                                        titleStyle: CustomTextStyles
                                            .titleMediumMedium18,
                                        hintText: 'Describe yourself',
                                        controller: aboutMeTextController,
                                        validator:
                                            FormValidation.stringValidation,
                                        isBorderNone: true,
                                      ),
                                      SizedBox(height: 25.v),
                                      Text('State of Residence',
                                          style: CustomTextStyles
                                              .bodyMediumPrimaryContainer_1),
                                      SizedBox(height: 7.v),
                                      BlocBuilder<AuthBloc, AuthState>(
                                          builder: (context, state) {
                                        return Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 5),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: appTheme.gray500,
                                                    width: 0.8),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  DropdownSearch<
                                                      StateResponseEntity>(
                                                    items: (filter,
                                                            infiniteScrollProps) =>
                                                        state.states,
                                                    itemAsString:
                                                        (StateResponseEntity
                                                                state) =>
                                                            state.name ?? '',
                                                    decoratorProps:
                                                        const DropDownDecoratorProps(
                                                            decoration:
                                                                InputDecoration(
                                                      border: InputBorder.none,
                                                    )),
                                                    onChanged:
                                                        (StateResponseEntity?
                                                            newValue) {
                                                      context
                                                          .read<AuthBloc>()
                                                          .add(
                                                            AuthEvent
                                                                .updateSelectedState(
                                                                    newValue!),
                                                          );
                                                    },
                                                    compareFn:
                                                        (item, selectedItem) {
                                                      return item.id ==
                                                          selectedItem.id;
                                                    },
                                                    filterFn: (item, filter) {
                                                      return item.name!
                                                          .toLowerCase()
                                                          .contains(filter
                                                              .toLowerCase());
                                                    },
                                                    suffixProps:
                                                        DropdownSuffixProps(
                                                      dropdownButtonProps:
                                                          DropdownButtonProps(
                                                        selectedIcon: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 20.0),
                                                          child: SvgPicture
                                                              .asset(AppAsset
                                                                  .dropdown),
                                                        ),
                                                      ),
                                                    ),
                                                    dropdownBuilder: (context,
                                                        selectedItem) {
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 10),
                                                        child: Text(
                                                          state.state?.name ??
                                                              'Select State',
                                                          style: selectedItem ==
                                                                  null
                                                              ? CustomTextStyles
                                                                  .titleSmallPrimaryContainer_1
                                                              : CustomTextStyles
                                                                  .titleSmallPrimaryContainer_1,
                                                        ),
                                                      );
                                                    },
                                                    popupProps:
                                                        const PopupProps.menu(
                                                      showSearchBox: true,
                                                      searchFieldProps:
                                                          TextFieldProps(
                                                        decoration:
                                                            InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          hintText: 'Search...',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]));
                                      }),
                                      SizedBox(height: 25.v),
                                      CustomTextFormField(
                                        title: 'Address ',
                                        titleStyle: CustomTextStyles
                                            .titleMediumMedium18,
                                        hintText: 'Enter Address',
                                        controller: addressController,
                                        validator:
                                            FormValidation.stringValidation,
                                        isBorderNone: true,
                                      ),
                                      SizedBox(height: 25.v),
                                      CustomTextFormField(
                                        title: 'City ',
                                        titleStyle: CustomTextStyles
                                            .titleMediumMedium18,
                                        hintText: 'Enter City',
                                        controller: cityController,
                                        validator:
                                            FormValidation.stringValidation,
                                        isBorderNone: true,
                                      ),
                                      SizedBox(height: 25.v),
                                      CustomDropDown<String>(
                                        isBorderNone: true,
                                        titleStyle: CustomTextStyles
                                            .titleMediumMedium18,
                                        title: 'Compensation Type',
                                        items: state.compensationTypeList,
                                        selectedItem: state.compensationType,
                                        itemLabel: (gender) => gender,
                                        onChanged: (value) {
                                          context.read<SettingBloc>().add(
                                                SettingEvent
                                                    .updateSelectedCompensationType(
                                                        value ?? ''),
                                              );
                                        },
                                      ),
                                      SizedBox(height: 50.v),
                                      BlocSelector<SettingBloc, SettingState,
                                          UpdateJobSeekerProfileEntity>(
                                        selector: (state) {
                                          return state
                                              .updateJobSeekerProfileRequest;
                                        },
                                        builder:
                                            (context, updateJobSeekerRequest) {
                                          return BlocBuilder<AuthBloc,
                                              AuthState>(
                                            builder: (context, authState) {
                                              return CustomElevatedButton(
                                                onPressed: (() {
                                                  if (formKey.currentState
                                                          ?.validate() ??
                                                      false) {
                                                    context
                                                        .read<SettingBloc>()
                                                        .add(SettingEvent
                                                            .updateJobSeekerRequest(
                                                                updateJobSeekerRequest
                                                                    .copyWith(
                                                          aboutMe:
                                                              aboutMeTextController
                                                                  .text,
                                                          streetAddress:
                                                              addressController
                                                                  .text,
                                                          compensationType: state
                                                              .compensationType,
                                                          city: cityController
                                                              .text,
                                                          countryId: 161,
                                                          state: authState.state
                                                                  ?.name ??
                                                              authState.states
                                                                  .first.name ??
                                                              '',
                                                        )));

                                                    print(
                                                        'update 2 ${addressController.text} ${aboutMeTextController.text} ${cityController.text} ${state.compensationType}  ${authState.state?.name} ${authState.states.first.name}');
                                                    Navigator.pushNamed(
                                                      context,
                                                      AppRoutes
                                                          .updateProfilePageThreeScreen,
                                                    );
                                                  }
                                                }),
                                                text: "Next",
                                              );
                                            },
                                          );
                                        },
                                      ),
                                      SizedBox(height: 12.v)
                                    ]))
                          ])),
                );
              },
            )));
  }
}
