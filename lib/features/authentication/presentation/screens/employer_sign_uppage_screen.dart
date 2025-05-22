import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_login_page_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:page_transition/page_transition.dart';

class EmployerSignUpPageScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            //resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
              title: 'Sign Up',
            ),
            body: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Form(
                    key: formKey,
                    child: Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.h, vertical: 12.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 2.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      "Hi, Kindly fill your information below",
                                      style: theme.textTheme.bodyMedium)),
                              SizedBox(height: 35.v),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomTextFormField(
                                          onChanged: (value) {
                                            context.read<AuthBloc>().add(
                                                AuthEvent.checkEmail(value));
                                          },
                                          title: 'Email',
                                          hintText: 'example@gmail.com',
                                          controller: emailController,
                                          textInputType:
                                              TextInputType.emailAddress,
                                          validator:
                                              FormValidation.emailValidation),
                                      AnimatedSwitcher(
                                        duration: Duration(milliseconds: 200),
                                        child: state.isEmail == true
                                            ? Text(
                                                'This email has already been used',
                                                key: ValueKey('error'),
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12),
                                              )
                                            : SizedBox(
                                                height: 0,
                                                key: ValueKey(
                                                    'empty')), // Reserve height
                                      ),

                                      // if (state.isEmail == true)
                                      //   Padding(
                                      //     padding: const EdgeInsets.only(
                                      //         left: 12.0, top: 4),
                                      //     child: Text(
                                      //       'This email has already been used',
                                      //       style: TextSle(
                                      //           color: Colors.red,
                                      //           fontSize: 12),
                                      //     ),
                                      //   ),
                                    ],
                                  );
                                },
                              ),
                              SizedBox(height: 30.v),
                              CustomTextFormField(
                                  title: 'Password',
                                  hintText: '*************',
                                  isPassword: true,
                                  isObscure: true,
                                  obscureText: true,
                                  controller: passwordController,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: FormValidation.passwordValidation),
                              SizedBox(height: 30.v),
                              CustomTextFormField(
                                title: 'Confirm Password',
                                hintText: '*************',
                                isPassword: true,
                                isObscure: true,
                                obscureText: true,
                                controller: confirmPasswordController,
                                textInputType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please confirm your password';
                                  }
                                  if (value != passwordController.text) {
                                    return 'Passwords do not match';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 45.v),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return BlocSelector<AuthBloc, AuthState,
                                      RegisterEmployerEntity>(
                                    selector: (state) =>
                                        state.registerEmployerRequest,
                                    builder:
                                        (context, registerEmployerRequest) {
                                      return CustomElevatedButton(
                                        text: 'Next',
                                        onPressed: () {
                                          final isFormValid = formKey
                                                  .currentState
                                                  ?.validate() ??
                                              false;

                                          if (!isFormValid) return;

                                          // Check if email has already been used
                                          if (state.isEmail == true) {
                                            ToastUtils.showRedToast(
                                                'This email address has already been used');
                                            // Show an alert/snackbar instead of navigating

                                            return; // ⛔ Prevent navigation
                                          }

                                          // Update Bloc state
                                          context.read<AuthBloc>().add(
                                                AuthEvent
                                                    .updateRegisterEmployerRequest(
                                                  registerEmployerRequest
                                                      .copyWith(
                                                    email: emailController.text,
                                                    password:
                                                        passwordController.text,
                                                    confirmPassword:
                                                        confirmPasswordController
                                                            .text,
                                                  ),
                                                ),
                                              );

                                          // ✅ Safe to navigate
                                          Navigator.pushNamed(
                                            context,
                                            AppRoutes
                                                .employerSignuppageOneScreen,
                                            arguments: emailController.text,
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),

                              // BlocSelector<AuthBloc, AuthState,
                              //     RegisterEmployerEntity>(
                              //   selector: (state) {
                              //     return state.registerEmployerRequest;
                              //   },
                              //   builder: (context, registerEmployerRequest) {
                              //     return CustomElevatedButton(
                              //       text: 'Next',
                              //       onPressed: () {
                              //         if (formKey.currentState?.validate() ??
                              //             false) {
                              //           print(
                              //               '${emailController.text} ${passwordController.text} ${confirmPasswordController.text}');
                              //           context.read<AuthBloc>().add(
                              //                 AuthEvent
                              //                     .updateRegisterEmployerRequest(
                              //                   registerEmployerRequest
                              //                       .copyWith(
                              //                     email: emailController.text,
                              //                     password:
                              //                         passwordController.text,
                              //                     confirmPassword:
                              //                         confirmPasswordController
                              //                             .text,
                              //                   ),
                              //                 ),
                              //               );
                              //           Navigator.pushNamed(
                              //               context,
                              //               AppRoutes
                              //                   .employerSignuppageOneScreen,
                              //               arguments: emailController.text);
                              //         }
                              //       },
                              //     );
                              //   },
                              // ),
                              SizedBox(height: 27.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: (() {
                                        Navigator.push(
                                            context,
                                            PageTransition(
                                                type: PageTransitionType
                                                    .bottomToTop,
                                                child:
                                                    EmployerLoginPageScreen()));
                                      }),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Already have an account?",
                                                style: CustomTextStyles
                                                    .titleSmallff666666),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "Login",
                                                style: CustomTextStyles
                                                    .titleSmallfff7941e)
                                          ]),
                                          textAlign: TextAlign.left))),
                              Spacer(),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: 130.h,
                                      child: Divider(
                                          color: theme.colorScheme.onPrimary)))
                            ]))))));
  }
}
