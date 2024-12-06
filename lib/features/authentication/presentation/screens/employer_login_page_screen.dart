import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_sign_uppage_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_dialog.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EmployerLoginPageScreen extends HookWidget {
  const EmployerLoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool obscure = true;
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
        // resizeToAvoidBottomInset: false,
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.employerLoginState == EmployerLoginState.success) {
              print('suceess');
              Navigator.pushNamed(context, AppRoutes.employerNavBarScreen);
            } else if (state.employerLoginState == EmployerLoginState.failure) {
              ToastUtils.showRedToast(state.errorMessage ?? '');
            }
          },
          builder: (context, state) {
            return Form(
              key: formKey,
              child: SizedBox(
                width: double.maxFinite,
                height: double.maxFinite,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
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
                          "Log in",
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 17.v),
                        Text(
                          "Login to your account as an employer",
                          style: CustomTextStyles.bodyMediumGray700_2,
                        ),
                        SizedBox(height: 60.v),
                        CustomTextFormField(
                          title: 'Email',
                          controller: emailController,
                          hintText: "example@gmail.com",
                          hintStyle: theme.textTheme.titleSmall!,
                          textInputType: TextInputType.emailAddress,
                          validator: FormValidation.emailValidation,
                        ),
                        SizedBox(height: 25.v),
                        CustomTextFormField(
                          title: 'Password',
                          controller: passwordController,
                          hintText: "*************",
                          hintStyle: theme.textTheme.titleSmall!,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          validator: FormValidation.stringValidation,
                          isPassword: true,
                          isObscure: true,
                          suffixConstraints: BoxConstraints(
                            maxHeight: 48.v,
                          ),
                          obscureText: obscure,
                          contentPadding: EdgeInsets.only(
                            left: 20.h,
                            top: 15.v,
                            bottom: 15.v,
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password?",
                            style:
                                CustomTextStyles.titleSmallPrimary_1.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(height: 41.v),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return CustomElevatedButton(
                              isBusy: state.employerLoginState ==
                                  EmployerLoginState.loading,
                              onPressed: () {
                                if (formKey.currentState?.validate() ?? false) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.loginUser(
                                          LoginEntity(
                                            email: emailController.text.trim(),
                                            password:
                                                passwordController.text.trim(),
                                          ),
                                        ),
                                      );
                                }
                              },
                              text: "Log in",
                            );
                          },
                        ),
                        SizedBox(height: 27.v),
                        GestureDetector(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Don’t have an account?",
                                    style: CustomTextStyles.titleSmallff666666,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "Sign Up",
                                    style: CustomTextStyles.titleSmallfff7941e,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        EmployerSignUpPageScreen()),
                              );
                            }))
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
