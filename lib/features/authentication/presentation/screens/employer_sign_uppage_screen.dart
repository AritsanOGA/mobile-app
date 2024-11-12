import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_login_page_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/employer_signuppage_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_title.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../core/services/auth.dart';
import '../../../../core/services/default.dart';

// ignore_for_file: must_be_immutable
class EmployerSignUpPageScreen extends StatefulWidget {
  @override
  _EmployerSignUpPageScreenState createState() =>
      _EmployerSignUpPageScreenState();
}

class _EmployerSignUpPageScreenState extends State<EmployerSignUpPageScreen> {
  TextEditingController _emailFieldController = TextEditingController();

  TextEditingController _passwordFieldController = TextEditingController();

  TextEditingController _confirmPasswordFieldController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthBloc(),
        child: SafeArea(
            child: Scaffold(
                //resizeToAvoidBottomInset: false,
                appBar: _buildAppBar(context),
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
                                  ),

                                  SizedBox(height: 32.v),

                                  CustomTextFormField(
                                    title: 'Password',
                                    hintText: '*************',
                                    isPassword: true,
                                  ),

                                  SizedBox(height: 32.v),

                                  CustomTextFormField(
                                    title: 'Confirm Password',
                                    hintText: '*************',
                                    isPassword: true,
                                  ),
                                  SizedBox(height: 44.v),
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 22.h, top: 17.v, bottom: 22.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Sign Up"));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
        title: 'Password',
        controller: _emailFieldController,
        hintText: "example@gmail.com",
        hintStyle: theme.textTheme.titleSmall!,
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
        title: 'Password',
        controller: _passwordFieldController,
        hintText: "*************",
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 20.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEleyeclose,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 48.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return CustomTextFormField(
        title: 'Password',
        controller: _confirmPasswordFieldController,
        hintText: "*************",
        hintStyle: theme.textTheme.titleSmall!,
        // textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 20.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEleyeclose,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 48.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 20.h, top: 15.v, bottom: 15.v));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (() {
        if (_emailFieldController.text.isNotEmpty &&
            _passwordFieldController.text.isNotEmpty &&
            _confirmPasswordFieldController.text.isNotEmpty) {
          if (_passwordFieldController.text ==
              _confirmPasswordFieldController.text) {
            var newEmployerInfo = [
              _emailFieldController.text,
              _passwordFieldController.text
            ];

            EasyLoading.show();
            Auth()
                .checkEmailExists(
                  email: _emailFieldController.text,
                )
                .then((value) => {
                      //  Navigator.pushNamed(context, AppRoutes.jSLoginPageScreen),
                      if (value == "EXISTS")
                        {
                          print(value.toString()),
                          EasyLoading.dismiss(),
                          Fluttertoast.showToast(
                              msg: "That email is already in use, try another",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor:
                                  const Color.fromARGB(255, 86, 86, 86)
                                      .withOpacity(0.6),
                              textColor: Colors.white,
                              fontSize: 16.0),

                          // Navigator.pushNamed(context, EmployerLogin()),
                        }
                      else
                        {
                          print(value.toString()),
                          //  Navigator.pop(context),
                          EasyLoading.dismiss(),
                          // Navigator.pop(context),
                          //  EasyLoading.showToast(value.toString())

                          Hive.box("artisan")
                              .put("new_employer_info", newEmployerInfo),

                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  child: EmployerSignuppageOneScreen()))
                        }
                    });
          } else {
            Fluttertoast.showToast(
                msg: "Please confirm your password properly!",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor:
                    const Color.fromARGB(255, 86, 86, 86).withOpacity(0.6),
                textColor: Colors.white,
                fontSize: 16.0);
          }
        } else {
          Fluttertoast.showToast(
              msg: "Please fill all fields",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor:
                  const Color.fromARGB(255, 86, 86, 86).withOpacity(0.6),
              textColor: Colors.white,
              fontSize: 16.0);
        }
      }),
      text: "Next",
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
