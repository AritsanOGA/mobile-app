import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/features/settings/presentation/pages/update_profile_page_three_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:page_transition/page_transition.dart';

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
      context.read<AuthBloc>().add(const AuthEvent.getUserData());
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
              bloc: context.read<SettingBloc>()
                ..add(SettingEvent.getCandidateProfile(
                    UserService().authData?.user.identity ?? '')),
              listener: (context, state) {
                if (state.getCandidateProfileState == ViewState.success) {
                  final profile = state.candidateProfileEntity;
                  if (profile != null) {
                    aboutMeTextController.text =
                        profile.profiles.serviceDescription ?? '';
                    addressController.text =
                        profile.profiles.streetAddress ?? '';
                    phoneNoTextController.text = profile.profiles.phone ?? '';
                    cityController.text = profile.profiles.city ?? '';
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
                if (state.getCandidateProfileState == ViewState.loading) {
                  return Center(child: CircularProgressIndicator());
                }

                if (state.getCandidateProfileState == ViewState.failure) {
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
                                      BlocBuilder<AuthBloc, AuthState>(
                                        builder: (context, state) {
                                          return CustomDropDown<
                                              StateResponseEntity>(
                                            title: 'State of Residence',
                                            isBorderNone: true,
                                            titleStyle: CustomTextStyles
                                                .titleMediumMedium18,
                                            items: state.states,
                                            selectedItem: state
                                                    .states.isNotEmpty
                                                ? state.states.firstWhere(
                                                    (state) =>
                                                        state.id == (state.id),
                                                    orElse: () =>
                                                        state.states.first)
                                                : StateResponseEntity(
                                                    id: 1098, name: 'Djelfa'),
                                            itemLabel: (state) => state.name!,
                                            onChanged: (value) {
                                              context.read<AuthBloc>().add(
                                                    AuthEvent
                                                        .updateSelectedState(
                                                            value!),
                                                  );
                                            },
                                          );
                                        },
                                      ),
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
                                                    Navigator.push(
                                                        context,
                                                        PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .rightToLeft,
                                                            duration:
                                                                Durations.long1,
                                                            child: UpdateProfilePageThreeScreen(
                                                                compensationType:
                                                                    state
                                                                        .compensationType)));
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
