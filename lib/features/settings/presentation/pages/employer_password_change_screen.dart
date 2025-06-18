import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/settings/domain/entities/change_password_entity.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

// ignore_for_file: must_be_immutable
class EmployerPasswordChangeScreen extends HookWidget {
  EmployerPasswordChangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final oldPasswordController = useTextEditingController();
    final newpasswordController = useTextEditingController();
    final confirmpasswordController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      context.read<SettingBloc>().add(SettingEvent.getEmployerProfile());
      return null;
    }, []);
    return Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          title: 'Change Password',
        ),
        resizeToAvoidBottomInset: false,
        body: BlocListener<SettingBloc, SettingState>(
          listener: (context, state) {
            if (state.updatePasswordState == UpdatePasswordState.success) {
              ToastUtils.showGreenToast('Password Updated Successfully');
              Navigator.pushNamed(context, AppRoutes.employerLoginPageScreen);
            } else if (state.updatePasswordState ==
                UpdatePasswordState.failure) {
              ToastUtils.showRedToast(state.errorMessage ?? '');
            }
          },
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom * 1),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 30.v),
                  child: SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 140.adaptSize,
                              width: 140.adaptSize,
                              padding: EdgeInsets.all(39.h),
                              decoration: AppDecoration.fillSecondaryContainer
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder113),
                              child: SvgPicture.asset(
                                ImageConstant.imgFlatColorIconsLock,
                              ),
                            )),
                        SizedBox(height: 32.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 327.h,
                                margin:
                                    EdgeInsets.only(left: 29.h, right: 30.h),
                                child: Text(
                                    "Your New Password Must be Different\nfrom Previously Used Password",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .titleMediumGray700Medium))),
                        SizedBox(height: 50.v),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h, right: 4.h),
                            child: CustomTextFormField(
                                title: 'Old Password',
                                controller: oldPasswordController,
                                hintText: "*********************",
                                validator: FormValidation.passwordValidation,
                                titleStyle: CustomTextStyles
                                    .titleMediumPrimaryContainer,
                                hintStyle: CustomTextStyles.titleMediumGray700,
                                textInputType: TextInputType.visiblePassword,
                                isPassword: true,
                                obscureText: true,
                                isObscure: true,
                                borderDecoration: TextFormFieldStyleHelper
                                    .underLinePrimaryContainer)),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h, right: 4.h),
                            child: CustomTextFormField(
                                isPassword: true,
                                isObscure: true,
                                validator: FormValidation.passwordValidation,
                                title: 'New Password',
                                controller: newpasswordController,
                                hintText: "*********************",
                                titleStyle: CustomTextStyles
                                    .titleMediumPrimaryContainer,
                                hintStyle: CustomTextStyles.titleMediumGray700,
                                textInputType: TextInputType.visiblePassword,
                                obscureText: true,
                                borderDecoration: TextFormFieldStyleHelper
                                    .underLinePrimaryContainer)),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h, right: 4.h),
                            child: CustomTextFormField(
                                title: 'Confirm Password',
                                controller: confirmpasswordController,
                                hintText: "*********************",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please confirm your password';
                                  }
                                  if (value != newpasswordController.text) {
                                    return 'Passwords do not match';
                                  }
                                  return null;
                                },
                                titleStyle: CustomTextStyles
                                    .titleMediumPrimaryContainer,
                                hintStyle: CustomTextStyles.titleMediumGray700,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                isPassword: true,
                                isObscure: true,
                                obscureText: true,
                                borderDecoration: TextFormFieldStyleHelper
                                    .underLinePrimaryContainer)),
                        SizedBox(height: 67.v),
                        BlocBuilder<SettingBloc, SettingState>(
                          builder: (context, state) {
                            return CustomElevatedButton(
                              isBusy: state.updatePasswordState ==
                                  UpdatePasswordState.loading,
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<SettingBloc>().add(
                                        SettingEvent.updatePassword(
                                          ChangePasswordEntity(
                                              newPassword:
                                                  newpasswordController.text,
                                              confirmNewPassword:
                                                  confirmpasswordController
                                                      .text,
                                              currentPassword:
                                                  oldPasswordController.text),
                                        ),
                                      );
                                }
                              },
                              text: "Save",
                            );
                          },
                        ),
                      ])),
                ),
              ),
            ),
          ),
        ));
  }
}
