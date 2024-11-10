import 'package:artisan_oga/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/j_s_create_account_page_two_screen.dart';
import 'package:artisan_oga/core/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'j_s_create_account_page_one_screen.dart';

class JSLoginPageScreen extends StatefulWidget {
  JSLoginPageScreen({Key? key}) : super(key: key);

  @override
  _JSLoginPageScreenState createState() => _JSLoginPageScreenState();
}

class _JSLoginPageScreenState extends State<JSLoginPageScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          // width: SizeUtils.width,
          child: SingleChildScrollView(
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
                            .loginJobSeeker(
                              email: emailController.text,
                              password: passwordController.text,
                            )
                            .then((value) => {
                                  //  Navigator.pushNamed(context, AppRoutes.jSLoginPageScreen),
                                  if (value == "success")
                                    {
                                      print(value.toString()),
                                      EasyLoading.dismiss(),
                                      //  EasyLoading.showToast("Successful"),
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
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DashboardPage()),
                                      )

                                      // Navigator.pushNamed(context, EmployerLogin()),
                                    }
                                  else
                                    {
                                      print(value.toString()),
                                      //   Navigator.pop(context),
                                      EasyLoading.dismiss(),
                                      // EasyLoading.showToast(value.toString())

                                      Fluttertoast.showToast(
                                          msg: value.toString(),
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: const Color.fromARGB(
                                                  255, 86, 86, 86)
                                              .withOpacity(0.6),
                                          textColor: Colors.white,
                                          fontSize: 16.0)
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
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                JSCreateAccountPagetTwoScreen()),
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
    );
  }
}
