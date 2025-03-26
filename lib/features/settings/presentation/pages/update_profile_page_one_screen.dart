import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/text_formatter.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_icon_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore_for_file: must_be_immutable
class UpdateProfilePageOneScreen extends HookWidget {
  UpdateProfilePageOneScreen({Key? key}) : super(key: key);
  var image;
  @override
  Widget build(BuildContext context) {
    final fullNameEditTextController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneNoTextController = useTextEditingController();
    final dateOfBirthController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);

    useEffect(() {
      context.read<SettingBloc>().add(SettingEvent.getJobSeekerProfile());
      return null;
    }, []);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          title: 'Settings',
        ),
        body: BlocConsumer<SettingBloc, SettingState>(
          listener: (context, state) {
            if (state.getJobSeekerProfileState ==
                GetJobSeekerProfileState.success) {
              final profile = state.getJobSeekerResponseEntity;
              if (profile != null) {
                fullNameEditTextController.text = profile.fullName ?? '';
                emailController.text = profile.email ?? '';
                phoneNoTextController.text = profile.phone ?? '';
                //dateOfBirthController.text = profile.dateOfBirth ?? '';
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
              child: SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Column(children: [
                            SizedBox(height: 16.v),
                            SizedBox(
                                height: 184.adaptSize,
                                width: 184.adaptSize,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      image == null
                                          ? CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse40,
                                              height: 184.adaptSize,
                                              width: 184.adaptSize,
                                              radius:
                                                  BorderRadius.circular(92.h),
                                              alignment: Alignment.center)
                                          : Container(
                                              width: 200,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: FileImage(image!),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                      GestureDetector(
                                        onTap: (() {
                                          //  pickImage();
                                        }),
                                        child: CustomIconButton(
                                            height: 57.adaptSize,
                                            width: 57.adaptSize,
                                            padding: EdgeInsets.all(7.h),
                                            decoration: IconButtonStyleHelper
                                                .fillPrimaryTL28,
                                            alignment: Alignment.bottomRight,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                      )
                                    ])),
                            SizedBox(height: 43.v),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 25.h),
                                child: Column(children: [
                                  SizedBox(height: 16.v),
                                  CustomTextFormField(
                                    title: 'Full Name',
                                    titleStyle:
                                        CustomTextStyles.titleMediumMedium18,
                                    hintText: 'Add a Job Description',
                                    controller: fullNameEditTextController,
                                    validator: FormValidation.stringValidation,
                                    isBorderNone: true,
                                  ),
                                  SizedBox(height: 25.v),
                                  CustomTextFormField(
                                    title: 'Email Address',
                                    titleStyle:
                                        CustomTextStyles.titleMediumMedium18,
                                    hintText: 'Add a Job Description',
                                    controller: emailController,
                                    validator: FormValidation.stringValidation,
                                    isBorderNone: true,
                                  ),
                                  SizedBox(height: 25.v),
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
                                  SizedBox(height: 25.v),
                                  CustomTextFormField(
                                    title: 'Phone Number',
                                    titleStyle:
                                        CustomTextStyles.titleMediumMedium18,
                                    hintText: 'Add a Job Description',
                                    controller: phoneNoTextController,
                                    validator: FormValidation.stringValidation,
                                    isBorderNone: true,
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  CustomTextFormField(
                                    hintText: 'MM/DD/YYYY',
                                    title: 'Date of Birth',
                                    textInputType: TextInputType.number,
                                    inputFormatters: [DateInputFormatter()],
                                    controller: dateOfBirthController,
                                    validator: FormValidation.stringValidation,
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  BlocSelector<SettingBloc, SettingState,
                                      UpdateJobSeekerProfileEntity>(
                                    selector: (state) {
                                      return state
                                          .updateJobSeekerProfileRequest;
                                    },
                                    builder: (context, updateJobSeekerRequest) {
                                      return CustomElevatedButton(
                                        onPressed: (() {
                                          if (formKey.currentState
                                                  ?.validate() ??
                                              false) {
                                            context.read<SettingBloc>().add(
                                                SettingEvent.updateJobSeekerRequest(
                                                    updateJobSeekerRequest.copyWith(
                                                        fullName:
                                                            fullNameEditTextController
                                                                .text,
                                                        email:
                                                            emailController
                                                                .text,
                                                        phoneNumber:
                                                            phoneNoTextController
                                                                .text,
                                                        dateOFBirth:
                                                            dateOfBirthController
                                                                .text,
                                                        jobPreference: '')));
                                            Navigator.pushNamed(
                                              context,
                                              AppRoutes
                                                  .updateProfilePageTwoScreen,
                                            );
                                          }
                                        }),
                                        text: "Next",
                                      );
                                    },
                                  ),
                                  SizedBox(height: 25.v),
                                  SizedBox(
                                      width: 130.h,
                                      child: Divider(
                                          color: theme
                                              .colorScheme.primaryContainer
                                              .withOpacity(1))),
                                  SizedBox(height: 12.v)
                                ]))
                          ])))),
            );
          },
        ));
  }
}
