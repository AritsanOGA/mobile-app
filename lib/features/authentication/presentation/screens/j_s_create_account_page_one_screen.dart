import 'dart:io';

import 'package:artisan_oga/features/authentication/presentation/screens/j_s_login_page_screen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

import 'j_s_create_account_page_two_screen.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageOneScreen extends StatefulWidget {
  @override
  _JSCreateAccountPageOneScreenState createState() =>
      _JSCreateAccountPageOneScreenState();
}

class _JSCreateAccountPageOneScreenState
    extends State<JSCreateAccountPageOneScreen> {
  // Declare any variables or state properties here

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  List<String> genderList = [
    "Male",
    "Female",
  ];

  String selectedGender = "Male";

  PlatformFile? file;
  File? image;

  List<Map<String, dynamic>>? newUserData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.h, vertical: 12.v),
                        child: Column(children: [
                          SizedBox(height: 27.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 104.h),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // CustomImageView(
                                        //     imagePath: ImageConstant
                                        //         .imgArrowLeftOnprimary,
                                        //     height: 16.adaptSize,
                                        //     width: 16.adaptSize,
                                        //     margin: EdgeInsets.only(
                                        //         top: 2.v, bottom: 6.v),
                                        //     onTap: () {
                                        //       onTapImgArrowLeft(context);
                                        //     }),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 87.h),
                                            child: Text("Create your Profile",
                                                style:
                                                    theme.textTheme.titleLarge))
                                      ]))),
                          SizedBox(height: 28.v),
                          Container(
                              width: 327.h,
                              margin: EdgeInsets.symmetric(horizontal: 29.h),
                              child: Text(
                                  "Your personal data is safe with us, and no one else will be able to see it.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium)),
                          SizedBox(height: 38.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 10.h),
                                        child: CustomTextFormField(
                                            title: 'Full Name',
                                            width: 180.h,
                                            controller: firstNameController,
                                            hintText: "Enter Full Name",
                                            hintStyle:
                                                theme.textTheme.titleSmall!))),
                                Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: CustomTextFormField(
                                            title: 'Phone no',
                                            width: 180.h,
                                            controller: lastNameController,
                                            hintText: "e.g 703 345 1345",
                                            hintStyle:
                                                theme.textTheme.titleSmall!)))
                              ]),
                          //   _buildFullName1(context),
                          SizedBox(height: 29.v),

                          CustomTextFormField(
                              title: 'Email Address (optional)',
                              controller: emailController,
                              hintText: "example@gmail.com",
                              hintStyle: theme.textTheme.titleSmall!,
                              textInputType: TextInputType.emailAddress),
                          SizedBox(height: 29.v),
                          CustomTextFormField(
                              title: 'Confirm Email Address',
                              controller: emailController,
                              hintText: "Re-enter example@gmail.com",
                              hintStyle: theme.textTheme.titleSmall!,
                              textInputType: TextInputType.emailAddress),
                          SizedBox(height: 38.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                      title: 'Password',
                                      width: 180.h,
                                      controller: passwordController,
                                      hintText: "************",
                                      hintStyle: theme.textTheme.titleSmall!,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true),
                                ),
                                CustomTextFormField(
                                    title: 'Password',
                                    width: 180.h,
                                    controller: confirmpasswordController,
                                    hintText: "************",
                                    hintStyle: theme.textTheme.titleSmall!,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    obscureText: true)
                              ]),
                          SizedBox(height: 38.v),

                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Upload Company Logo",
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 5.v),
                                    //  _buildChooseFile(context),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('City',
                                        style: CustomTextStyles
                                            .bodyMediumPrimaryContainer_1),
                                    CustomDropDown(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //  _buildPassword1(context),
                          SizedBox(height: 28.v),

                          CustomElevatedButton(
                            onPressed: (() {
                              if (firstNameController.text.isNotEmpty &&
                                  lastNameController.text.isNotEmpty &&
                                  phoneController.text.isNotEmpty &&
                                  emailController.text.isNotEmpty &&
                                  passwordController.text.isNotEmpty) {
                                if (passwordController.text !=
                                    confirmpasswordController.text) {
                                  Fluttertoast.showToast(
                                      msg:
                                          "Please confirm your password properly",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor:
                                          const Color.fromARGB(255, 86, 86, 86)
                                              .withOpacity(0.6),
                                      textColor: Colors.white,
                                      fontSize: 16.0);

                                  //password and confirm password are not the same
                                } else {
                                  newUserData = [
                                    {
                                      "full_name": firstNameController.text +
                                          " " +
                                          lastNameController.text
                                    },
                                    {"phone": phoneController.text},
                                    {"email": emailController.text},
                                    {"password": passwordController.text},
                                    {
                                      "confirm_password":
                                          confirmpasswordController.text
                                    },
                                    {"gender": selectedGender},
                                  ];

                                  Hive.box("artisan")
                                      .put("new_applicant", newUserData);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            JSCreateAccountPagetTwoScreen()),
                                  );
                                }
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          JSCreateAccountPagetTwoScreen()),
                                );
                                // Fluttertoast.showToast(
                                //     msg: "Fill in all fields",
                                //     toastLength: Toast.LENGTH_SHORT,
                                //     gravity: ToastGravity.CENTER,
                                //     timeInSecForIosWeb: 1,
                                //     backgroundColor:
                                //         const Color.fromARGB(255, 86, 86, 86).withOpacity(0.6),
                                //     textColor: Colors.white,
                                //     fontSize: 16.0);
                              }
                            }),
                            text: "Next",
                          ),
                          //    _buildNext(context),
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
                                        style:
                                            CustomTextStyles.titleSmallfff7941e)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 62.v),
                          SizedBox(
                              width: 130.h,
                              child:
                                  Divider(color: theme.colorScheme.onPrimary))
                        ]))))));
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
          padding: EdgeInsets.only(left: 10.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Phone no", style: theme.textTheme.bodyMedium),
            SizedBox(height: 6.v),
            SizedBox(
              width: double.maxFinite,
              child: CustomTextFormField(
                  title: 'Password',
                  textInputType: TextInputType.phone,
                  width: 180.h,
                  controller: phoneController,
                  hintText: "e.g 703 345 1345",
                  hintStyle: theme.textTheme.titleSmall!),
            )
          ])),
    );
  }

  /// Section Widget
  Widget _buildFullName1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("First Name", style: theme.textTheme.bodyMedium),
                        SizedBox(height: 6.v),
                        CustomTextFormField(
                            title: 'Password',
                            width: 180.h,
                            controller: firstNameController,
                            hintText: "First Name",
                            hintStyle: theme.textTheme.titleSmall!)
                      ]))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Last Name", style: theme.textTheme.bodyMedium),
                        SizedBox(height: 6.v),
                        CustomTextFormField(
                            title: 'Password',
                            width: 180.h,
                            controller: lastNameController,
                            hintText: "Last Name",
                            hintStyle: theme.textTheme.titleSmall!)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            title: 'Password',
            controller: emailController,
            hintText: "example@gmail.com",
            hintStyle: theme.textTheme.titleSmall!,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            title: 'Password',
            textInputType: TextInputType.emailAddress,
            controller: emailController1,
            hintText: "Re-enter example@gmail.com",
            hintStyle: theme.textTheme.titleSmall!));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        title: 'Password',
        width: 180.h,
        controller: passwordController,
        hintText: "************",
        hintStyle: theme.textTheme.titleSmall!,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Confirm Password", style: theme.textTheme.bodyMedium),
              SizedBox(height: 7.v),
              CustomTextFormField(
                  title: 'Password',
                  width: 180.h,
                  controller: confirmpasswordController,
                  hintText: "************",
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true)
            ])));
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Password", style: theme.textTheme.bodyMedium),
                        SizedBox(height: 6.v),
                        _buildPassword(context)
                      ]))),
          _buildConfirmpassword(context)
        ]));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (() {
        if (firstNameController.text.isNotEmpty &&
            lastNameController.text.isNotEmpty &&
            phoneController.text.isNotEmpty &&
            emailController.text.isNotEmpty &&
            passwordController.text.isNotEmpty) {
          if (passwordController.text != confirmpasswordController.text) {
            Fluttertoast.showToast(
                msg: "Please confirm your password properly",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor:
                    const Color.fromARGB(255, 86, 86, 86).withOpacity(0.6),
                textColor: Colors.white,
                fontSize: 16.0);

            //password and confirm password are not the same
          } else {
            newUserData = [
              {
                "full_name":
                    firstNameController.text + " " + lastNameController.text
              },
              {"phone": phoneController.text},
              {"email": emailController.text},
              {"password": passwordController.text},
              {"confirm_password": confirmpasswordController.text},
              {"gender": selectedGender},
            ];

            Hive.box("artisan").put("new_applicant", newUserData);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => JSCreateAccountPagetTwoScreen()),
            );
          }
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => JSCreateAccountPagetTwoScreen()),
          );
          // Fluttertoast.showToast(
          //     msg: "Fill in all fields",
          //     toastLength: Toast.LENGTH_SHORT,
          //     gravity: ToastGravity.CENTER,
          //     timeInSecForIosWeb: 1,
          //     backgroundColor:
          //         const Color.fromARGB(255, 86, 86, 86).withOpacity(0.6),
          //     textColor: Colors.white,
          //     fontSize: 16.0);
        }
      }),
      text: "Next",
    );
  }

  Future<void> pickImage() async {
    try {
      final pickedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );

      if (pickedImage == null) return;

      final imageFile = File(pickedImage.path);
      setState(() {
        image = imageFile;
      });
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
