import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/login_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'j_s_create_account_page_one_screen.dart';

class JSLoginPageScreen extends HookWidget {
  const JSLoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
        resizeToAvoidBottomInset: false,
        body: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.viewState == ViewState.success) {
              print('suceess');
              Navigator.pushNamed(context, AppRoutes.dashboardScreen);
            } else if (state.viewState == ViewState.success) {
              showDialog<Widget>(
                context: context,
                builder: (ctx) => CustomAlertDialog(
                  title: 'Error!!!',
                  content: state.errorMessage ?? '',
                  actionText: 'OK',
                  onActionPressed: () => Navigator.of(ctx).pop(),
                ),
              );
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
                        "Log in",
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 17.v),
                      Text(
                        "Log into your Job Seeker Account",
                        style: CustomTextStyles.bodyMediumGray700_2,
                      ),
                      SizedBox(height: 60.v),
                      CustomTextFormField(
                        title: 'Email',
                        controller: emailController,
                        hintText: "example@gmail.com",
                        validator: FormValidation.emailValidation,
                        hintStyle: theme.textTheme.titleSmall!,
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 30.v),
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
                      SizedBox(height: 19.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: CustomTextStyles.titleSmallPrimary_1.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      SizedBox(height: 45.v),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return CustomElevatedButton(
                            isBusy: state.viewState == ViewState.loading,
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             EmployerDashboardPage()));
                              context.read<AuthBloc>().add(
                                    AuthEvent.loginUser(
                                      LoginEntity(
                                        email: emailController.text.trim(),
                                        password:
                                            passwordController.text.trim(),
                                      ),
                                    ),
                                  );
                            },
                            text: "Log in",
                          );
                        },
                      ),
                      SizedBox(height: 27.v),
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    JSCreateAccountPageOneScreen()),
                          );
                        }),
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
                      )
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
