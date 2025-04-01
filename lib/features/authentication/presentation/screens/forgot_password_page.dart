import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/forgot_password_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ForgotPasswordPage extends HookWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool obscure = true;
    final emailController = useTextEditingController();

    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
        // resizeToAvoidBottomInset: false,
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.forgotPasswordState == ForgotPasswordState.success) {
         
              Navigator.pushNamed(context, AppRoutes.verifyForgotPasswordScreen,
                  arguments: emailController.text);
            } else if (state.forgotPasswordState ==
                ForgotPasswordState.failure) {
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 59.v),
                        Text(
                          "Forgot Password",
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 17.v),
                        Text(
                          "We need your email to get you started",
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
                        SizedBox(height: 100.v),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return CustomElevatedButton(
                              isBusy: state.forgotPasswordState ==
                                  ForgotPasswordState.loading,
                              onPressed: () {
                                if (formKey.currentState?.validate() ?? false) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.forgotPassword(
                                          ForgotPasswordEntity(
                                            email: emailController.text.trim(),
                                          ),
                                        ),
                                      );
                                }
                              },
                              text: "Continue",
                            );
                          },
                        ),
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
