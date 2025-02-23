import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/update_password_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordResetPage extends HookWidget {
  final String email;
  const PasswordResetPage({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
        resizeToAvoidBottomInset: false,
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.changePasswordState == ChangePasswordState.success) {
              print('suceess');
              Navigator.pushNamed(context, AppRoutes.welcomePageScreen);
            } else if (state.changePasswordState ==
                ChangePasswordState.failure) {
              ToastUtils.showRedToast(state.errorMessage ?? '');
            }
            ;
          },
          child: SizedBox(
            // width: SizeUtils.width,
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 12.v,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 59.v),
                      Text(
                        "Reset Password",
                        style: theme.textTheme.headlineSmall,
                      ),
                      // SizedBox(height: 17.v),
                      // Text(
                      //   "Reset your password",
                      //   style: CustomTextStyles.bodyMediumGray700_2,
                      // ),
                      // SizedBox(height: 60.v),
                      // CustomTextFormField(
                      //   title: 'Email',
                      //   controller: emailController,
                      //   hintText: "example@gmail.com",
                      //   validator: FormValidation.emailValidation,
                      //   hintStyle: theme.textTheme.titleSmall!,
                      //   textInputType: TextInputType.emailAddress,
                      // ),
                      SizedBox(height: 60.v),
                      CustomTextFormField(
                        title: 'Password',
                        controller: passwordController,
                        hintText: "*************",
                        hintStyle: theme.textTheme.titleSmall!,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        isPassword: true,
                        isObscure: true,
                        suffixConstraints: BoxConstraints(
                          maxHeight: 48.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          left: 20.h,
                          top: 15.v,
                          bottom: 15.v,
                        ),
                      ),
                      SizedBox(height: 30.v),
                      CustomTextFormField(
                        title: 'Confirm Password',
                        controller: confirmPasswordController,
                        hintText: "*************",
                        hintStyle: theme.textTheme.titleSmall!,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        isPassword: true,
                        isObscure: true,
                        suffixConstraints: BoxConstraints(
                          maxHeight: 48.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          left: 20.h,
                          top: 15.v,
                          bottom: 15.v,
                        ),
                      ),
                      SizedBox(height: 50.v),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return CustomElevatedButton(
                            isBusy: state.changePasswordState ==
                                ChangePasswordState.loading,
                            onPressed: () {
                              context.read<AuthBloc>().add(
                                    AuthEvent.updatePassword(
                                      UpdatePasswordEntity(
                                          email: email,
                                          password:
                                              passwordController.text.trim(),
                                          confirmPassword:
                                              confirmPasswordController.text
                                                  .trim()),
                                    ),
                                  );
                            },
                            text: "Submit",
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
