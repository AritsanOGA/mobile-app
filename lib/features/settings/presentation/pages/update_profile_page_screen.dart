import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_employer_profile_entity.dart';
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
class EmployerProfilePageScreen extends HookWidget {
  EmployerProfilePageScreen({Key? key}) : super(key: key);

  var image;
  @override
  Widget build(BuildContext context) {
    final fullNameEditTextController = useTextEditingController();
    final cityTextController = useTextEditingController();
    final addressEditTextController = useTextEditingController();
    final companyNameController = useTextEditingController();
    final phoneNoController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      useEffect(() {
        context.read<SettingBloc>().add(SettingEvent.getEmployerProfile());
        return null;
      }, []);
      context.read<AuthBloc>().add(
            AuthEvent.getState('161'),
          );
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
            if (state.getEmployerProfileState ==
                GetEmployerProfileState.success) {
              final profile = state.getEmployerResponseEntity;
              if (profile != null) {
                fullNameEditTextController.text = profile.fullName ?? '';
                companyNameController.text = profile.companyName ?? '';
                addressEditTextController.text = profile.streetAddress ?? '';
                cityTextController.text = profile.city ?? '';
                phoneNoController.text = profile.phoneNo ?? '';
              }
            }
            if (state.updateEmployerProfileState ==
                UpdateEmployerProfileState.success) {
              ToastUtils.showGreenToast('Profile Update Successfully');
              Navigator.pushNamed(context, AppRoutes.employerNavBarScreen);
            }
            if (state.updateEmployerProfileState ==
                UpdateEmployerProfileState.failure) {
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
                GetEmployerProfileState.success) {}
            return Form(
              key: formKey,
              child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Column(children: [
                        SizedBox(height: 5.v),
                        SizedBox(
                            height: 134.adaptSize,
                            width: 140.adaptSize,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  image == null
                                      ? CustomImageView(
                                          imagePath: ImageConstant.imgEllipse40,
                                          height: 154.adaptSize,
                                          width: 140.adaptSize,
                                          radius: BorderRadius.circular(92.h),
                                          alignment: Alignment.center)
                                      : Container(
                                          width: 150,
                                          height: 150,
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
                                        height: 45.adaptSize,
                                        width: 45.adaptSize,
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
                        SizedBox(height: 20.v),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 25.h),
                            child: Column(children: [
                              SizedBox(height: 16.v),
                              CustomTextFormField(
                                title: 'Full Name',
                                titleStyle:
                                    CustomTextStyles.titleMediumMedium18,
                                hintText: 'Enter full name',
                                controller: fullNameEditTextController,
                                validator: FormValidation.stringValidation,
                                isBorderNone: true,
                              ),
                              SizedBox(height: 25.v),
                              CustomTextFormField(
                                title: 'Company Name',
                                titleStyle:
                                    CustomTextStyles.titleMediumMedium18,
                                hintText: 'Enter company name',
                                controller: companyNameController,
                                validator: FormValidation.stringValidation,
                                isBorderNone: true,
                              ),
                              SizedBox(height: 25.v),
                              CustomTextFormField(
                                title: 'Phone Number',
                                titleStyle:
                                    CustomTextStyles.titleMediumMedium18,
                                hintText: 'Enter phone number',
                                controller: phoneNoController,
                                validator: FormValidation.stringValidation,
                                isBorderNone: true,
                              ),
                              SizedBox(height: 25.v),
                              CustomTextFormField(
                                title: 'Street Address',
                                titleStyle:
                                    CustomTextStyles.titleMediumMedium18,
                                hintText: 'Enter address',
                                controller: addressEditTextController,
                                validator: FormValidation.stringValidation,
                                isBorderNone: true,
                              ),
                              SizedBox(height: 25.v),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return CustomDropDown<StateResponseEntity>(
                                    isBorderNone: true,
                                    titleStyle:
                                        CustomTextStyles.titleMediumMedium18,
                                    title: 'State',
                                    items: state.states,
                                    selectedItem: state.states.firstWhere(
                                      (state) => state.id == (state.id),
                                      orElse: () => StateResponseEntity(
                                          id: 4, name: 'ALgeria'),
                                    ),
                                    itemLabel: (state) => state.name!,
                                    onChanged: (value) {
                                      context.read<AuthBloc>().add(
                                            AuthEvent.updateSelectedState(
                                                value!),
                                          );
                                    },
                                  );
                                },
                              ),
                              SizedBox(height: 25.v),
                              CustomTextFormField(
                                title: 'City',
                                titleStyle:
                                    CustomTextStyles.titleMediumMedium18,
                                hintText: 'Enter City',
                                controller: cityTextController,
                                validator: FormValidation.stringValidation,
                                isBorderNone: true,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, authState) {
                                  return CustomElevatedButton(
                                    isBusy: state.updateEmployerProfileState ==
                                        UpdateEmployerProfileState.loading,
                                    text: "Save",
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        context
                                            .read<SettingBloc>()
                                            .add(SettingEvent
                                                .updateEmployerProfile(
                                                    UpdateEmployerProfileEntity(
                                              userId: state
                                                      .getEmployerResponseEntity
                                                      ?.identity ??
                                                  '',
                                              streetAddress:
                                                  addressEditTextController
                                                      .text,
                                              fullName:
                                                  fullNameEditTextController
                                                      .text,
                                              businessName:
                                                  companyNameController.text,
                                              phoneNo: phoneNoController.text,
                                              city: cityTextController.text,
                                              country: '161',
                                              state: authState.state?.name ??
                                                  authState.states.first.name ??
                                                  '',
                                            )));
                                      }
                                    },
                                  );
                                },
                              ),
                              SizedBox(height: 40.v),
                            ]))
                      ]))),
            );
          },
        ));
  }
}
