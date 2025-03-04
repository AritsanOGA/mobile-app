import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/j_s_login_page_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class JSCreateAccountPageOneScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final fullNameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final emailController = useTextEditingController();
    final confirmEmailController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);

    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Create your Profile',
            ),
            resizeToAvoidBottomInset: false,
            body: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return SizedBox(
                    width: SizeUtils.width,
                    child: SingleChildScrollView(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Form(
                          key: formKey,
                          child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25.h, vertical: 12.v),
                              child: Column(children: [
                                SizedBox(height: 2.v),
                                Text(
                                    "Your personal data is safe with us, and no one\nelse will be able to see it.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyMedium),
                                SizedBox(height: 35.v),
                                CustomTextFormField(
                                    title: 'Full Name',
                                    controller: fullNameController,
                                    validator: FormValidation.stringValidation,
                                    hintText: "Enter Full Name",
                                    textInputType: TextInputType.name,
                                    hintStyle: theme.textTheme.titleSmall!),
                                SizedBox(height: 30.v),
                                CustomTextFormField(
                                    title: 'Email Address',
                                    controller: emailController,
                                    hintText: "example@gmail.com",
                                    validator: FormValidation.emailValidation,
                                    hintStyle: theme.textTheme.titleSmall!,
                                    textInputType: TextInputType.emailAddress),
                                SizedBox(height: 30.v),
                                CustomTextFormField(
                                    title: 'Confirm Email Address',
                                    validator: FormValidation.emailValidation,
                                    controller: confirmEmailController,
                                    hintText: "Re-enter example@gmail.com",
                                    hintStyle: theme.textTheme.titleSmall!,
                                    textInputType: TextInputType.emailAddress),
                                SizedBox(height: 30.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: CustomTextFormField(
                                          title: 'Password',
                                          width: 180.h,
                                          controller: passwordController,
                                          hintText: "************",
                                          hintStyle:
                                              theme.textTheme.titleSmall!,
                                          isPassword: true,
                                          validator:
                                              FormValidation.passwordValidation,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          obscureText: true,
                                          isObscure: true,
                                        ),
                                      ),
                                      CustomTextFormField(
                                          title: 'Confirm Password',
                                          width: 180.h,
                                          controller: confirmPasswordController,
                                          hintText: "************",
                                          isPassword: true,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please confirm your password';
                                            }
                                            if (value !=
                                                passwordController.text) {
                                              return 'Passwords do not match';
                                            }
                                            return null;
                                          },
                                          isObscure: true,
                                          hintStyle:
                                              theme.textTheme.titleSmall!,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          obscureText: true)
                                    ]),
                                SizedBox(height: 30.v),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Upload Picture",
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          SizedBox(height: 5.v),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(right: 10.h),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8.v,
                                                  horizontal: 5.v),
                                              decoration: AppDecoration
                                                  .outlineBlueGray
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder7),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    InkWell(
                                                        onTap: () {
                                                          context
                                                              .read<AuthBloc>()
                                                              .add(const AuthEvent
                                                                  .selectPicture());
                                                        },
                                                        child: Container(
                                                            height: 30,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                color: ColorSchemes
                                                                    .primaryColorScheme
                                                                    .primary),
                                                            child: Center(
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        5),
                                                                child: Text(
                                                                    'choose file',
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelMedium
                                                                        ?.copyWith(
                                                                            color:
                                                                                Colors.white)),
                                                              ),
                                                            ))),
                                                    SizedBox(width: 5.v),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 5.v, right: 5.v),
                                                      child: Text(
                                                          state.picture == null
                                                              ? "No file chosen"
                                                              : "Image selected",
                                                          style: theme.textTheme
                                                              .labelLarge),
                                                    )
                                                  ]))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: CustomDropDown<String>(
                                        title: 'Gender',
                                        items: state.genders,
                                        selectedItem: state.gender,
                                        itemLabel: (gender) => gender,
                                        onChanged: (value) {
                                          context.read<AuthBloc>().add(
                                                AuthEvent.updateSelectedGender(
                                                    value ?? ''),
                                              );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 45.v),
                                BlocSelector<AuthBloc, AuthState,
                                    RegisterJobSeekerEntity>(
                                  selector: (state) {
                                    return state.registerJobSeekerRequest;
                                  },
                                  builder: (context, registerJobSeekerRequest) {
                                    return CustomElevatedButton(
                                      onPressed: (() {
                                        if (formKey.currentState?.validate() ??
                                            false) {
                                          context.read<AuthBloc>().add(AuthEvent
                                              .updateRegisterJobSeekerRequest(
                                                  registerJobSeekerRequest.copyWith(
                                                      fullName:
                                                          fullNameController
                                                              .text,
                                                      email:
                                                          emailController.text,
                                                      confirmPassword:
                                                          confirmPasswordController
                                                              .text,
                                                      gender: state.gender,
                                                      passport: state.picture,
                                                      password:
                                                          passwordController
                                                              .text)));
                                          Navigator.pushNamed(
                                              context,
                                              AppRoutes
                                                  .jSCreateAccountPageTwoScreen,
                                              arguments: emailController.text);
                                        }
                                      }),
                                      text: "Next",
                                    );
                                  },
                                ),
                                SizedBox(height: 21.v),
                                GestureDetector(
                                    onTap: (() {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                JSLoginPageScreen()),
                                      );
                                    }),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Already have an account?",
                                              style: CustomTextStyles
                                                  .titleSmallff666666),
                                          TextSpan(text: " "),
                                          TextSpan(
                                              text: "Sign In",
                                              style: CustomTextStyles
                                                  .titleSmallfff7941e)
                                        ]),
                                        textAlign: TextAlign.left)),
                                SizedBox(height: 62.v),
                                SizedBox(
                                    width: 130.h,
                                    child: Divider(
                                        color: theme.colorScheme.onPrimary))
                              ])),
                        )));
              },
            )));
  }
}
