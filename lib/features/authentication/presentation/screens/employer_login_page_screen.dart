import 'package:artisan_oga/features/authentication/presentation/screens/employer_sign_uppage_screen.dart';
import 'package:artisan_oga/core/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../presentation/employer_dashboard_page/employer_dashboard_page.dart';

class EmployerLoginPageScreen extends StatefulWidget {
  EmployerLoginPageScreen({Key? key}) : super(key: key);

  @override
  _EmployerLoginPageScreenState createState() =>
      _EmployerLoginPageScreenState();
}

class _EmployerLoginPageScreenState extends State<EmployerLoginPageScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SizedBox(
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
                  SizedBox(height: 52.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      style: CustomTextStyles.bodyMediumPrimaryContainer_1,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  CustomTextFormField(
                       title:'Password' ,
                    controller: emailController,
                    hintText: "example@gmail.com",
                    hintStyle: theme.textTheme.titleSmall!,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 28.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: CustomTextStyles.bodyMediumPrimaryContainer_1,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  CustomTextFormField(
                    title:'Password' ,
                    controller: passwordController,
                    hintText: "*************",
                    hintStyle: theme.textTheme.titleSmall!,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 12.v, 20.h, 12.v),
                        child: GestureDetector(
                          onTap: (() {
                            setState(() {
                              obscure = !obscure;
                            });
                          }),
                          child: obscure == true
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        )),
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
                      style: CustomTextStyles.titleSmallPrimary_1.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 41.v),
                  CustomElevatedButton(
                    onPressed: (() {
                      if ( //_emailController.text.isNotEmpty &&
                          emailController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty) {
                        EasyLoading.show();
                        Auth()
                            .loginEmployer(
                              email: emailController.text,
                              password: passwordController.text,
                            )
                            .then((value) => {
                                  //  Navigator.pushNamed(context, AppRoutes.jSLoginPageScreen),
                                  if (value == "success")
                                    {
                                      print(value.toString()),
                                      EasyLoading.dismiss(),
                                      Fluttertoast.showToast(
                                          msg: "Login successful",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: const Color.fromARGB(
                                                  255, 86, 86, 86)
                                              .withOpacity(0.6),
                                          textColor: Colors.white,
                                          fontSize: 16.0),
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              duration:
                                                  Duration(milliseconds: 500),
                                              type: PageTransitionType
                                                  .rightToLeft,
                                              child: EmployerDashboardPage()))

                                      // Navigator.pushNamed(context, EmployerLogin()),
                                    }
                                  else
                                    {
                                      print(value.toString()),
                                      //  Navigator.pop(context),
                                      EasyLoading.dismiss(),
                                      // Navigator.pop(context),
                                      //  EasyLoading.showToast(value.toString())

                                      Fluttertoast.showToast(
                                          msg: value.toString(),
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: const Color.fromARGB(
                                                  255, 86, 86, 86)
                                              .withOpacity(0.6),
                                          textColor: Colors.white,
                                          fontSize: 16.0),
                                    }
                                });
                        //  Navigator.pushNamed(context, AppRoutes.employerRegisterPageOneScreen);
                      } else {
                        Fluttertoast.showToast(
                            msg: "Please fill out all fields",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor:
                                const Color.fromARGB(255, 86, 86, 86)
                                    .withOpacity(0.6),
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    }),
                    text: "Log in",
                  
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
                              builder: (context) => EmployerSignUpPageScreen()),
                        );
                      }))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
