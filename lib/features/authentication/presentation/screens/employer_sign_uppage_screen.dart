import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_login_page_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_signuppage_one_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../core/services/auth.dart';

// ignore_for_file: must_be_immutable
class EmployerSignUpPageScreen extends HookWidget {
  TextEditingController _emailFieldController = TextEditingController();

  TextEditingController _passwordFieldController = TextEditingController();

  TextEditingController _confirmPasswordFieldController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocProvider(
        create: (context) => AuthBloc(),
        child: SafeArea(
            child: Scaffold(
                //resizeToAvoidBottomInset: false,
                appBar: CustomAppBar(
                  title: 'Sign Up',
                ),
                body: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
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
                                  CustomTextFormField(
                                    title: 'Email',
                                    hintText: 'example@gmail.com',
                                    controller: emailController,
                                  ),

                                  SizedBox(height: 30.v),

                                  CustomTextFormField(
                                    title: 'Password',
                                    hintText: '*************',
                                    isPassword: true,
                                    controller: passwordController,
                                  ),

                                  SizedBox(height: 30.v),

                                  CustomTextFormField(
                                    title: 'Confirm Password',
                                    hintText: '*************',
                                    isPassword: true,
                                    controller: confirmPasswordController,
                                  ),
                                  SizedBox(height: 45.v),
                                  CustomElevatedButton(
                                    text: 'Next',
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .bottomToTop,
                                              child:
                                                  EmployerSignuppageOneScreen()));
                                    },
                                  ),
                                  //_buildNextButton(context),
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
                                              color:
                                                  theme.colorScheme.onPrimary)))
                                ])))))));
  }
}
