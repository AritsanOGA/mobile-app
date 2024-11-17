import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:hive/hive.dart';

import 'j_s_create_account_page_six_screen.dart';
import 'j_s_create_account_page_five_screen.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageFourScreen extends StatefulWidget {
  JSCreateAccountPageFourScreen({Key? key}) : super(key: key);

  @override
  _JSCreateAccountPageFourScreenState createState() =>
      _JSCreateAccountPageFourScreenState();
}

class _JSCreateAccountPageFourScreenState
    extends State<JSCreateAccountPageFourScreen> {
  List<String> dropdownItemList = ["Yes, I do", "No Work Experience"];
  List<String> commutTypeList = ["Remote", "Hybrid", "Onsite"];

  TextEditingController nameController = TextEditingController();

  TextEditingController enterJobRoleController = TextEditingController();
  TextEditingController enterJobDescriptionController = TextEditingController();
  TextEditingController startYearController = TextEditingController();
  TextEditingController endYearController = TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String selectedJobHistoryOption = "Yes, I do";
  String selectedCommutType = "Remote";

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
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowLeftOnprimary,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 2.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                GestureDetector(
                                    onTap: (() {
                                      Navigator.pop(context);
                                    }),
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Text("Back",
                                            style: CustomTextStyles
                                                .titleMediumOnPrimary)))
                              ])),
                          SizedBox(height: 38.v),
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: Padding(
                          //         padding: EdgeInsets.only(left: 3.h),
                          //         child: Text("How would you like to work",
                          //             style: theme.textTheme.bodyMedium))),
                          // SizedBox(height: 16.v),
                          // Padding(
                          //     padding: EdgeInsets.symmetric(horizontal: 3.h),
                          //     child: CustomDropDown(
                          //         icon: Container(
                          //             padding: EdgeInsets.all(3.h),
                          //             margin: EdgeInsets.fromLTRB(
                          //                 30.h, 14.v, 20.h, 14.v),
                          //             decoration: BoxDecoration(
                          //                 color: theme.colorScheme.primary,
                          //                 borderRadius:
                          //                     BorderRadius.circular(9.h)),
                          //             child: CustomImageView(
                          //                 imagePath: ImageConstant.imgCheckmark,
                          //                 height: 11.adaptSize,
                          //                 width: 11.adaptSize)),
                          //         hintText: "Remote",
                          //         items: commutTypeList,
                          //         onChanged: (value) {
                          //           setState(() {
                          //             selectedCommutType = value;
                          //           });
                          //         })),
                          // SizedBox(height: 28.v),
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: Padding(
                          //         padding: EdgeInsets.only(left: 3.h),
                          //         child: Text(
                          //             "Do you have any work experience?",
                          //             style: theme.textTheme.bodyMedium))),
                          // SizedBox(height: 6.v),
                          // Padding(
                          //     padding: EdgeInsets.symmetric(horizontal: 3.h),
                          //     child: CustomDropDown(
                          //         icon: Container(
                          //             padding: EdgeInsets.all(3.h),
                          //             margin: EdgeInsets.fromLTRB(
                          //                 30.h, 14.v, 20.h, 14.v),
                          //             decoration: BoxDecoration(
                          //                 color: theme.colorScheme.primary,
                          //                 borderRadius:
                          //                     BorderRadius.circular(9.h)),
                          //             child: CustomImageView(
                          //                 imagePath: ImageConstant.imgCheckmark,
                          //                 height: 11.adaptSize,
                          //                 width: 11.adaptSize)),
                          //         hintText: "Do you have work experience?",
                          //         items: dropdownItemList,
                          //         onChanged: (value) {
                          //           setState(() {
                          //             selectedJobHistoryOption = value;
                          //           });
                          //         })),
                          // SizedBox(height: 38.v),
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: Padding(
                          //         padding: EdgeInsets.only(left: 3.h),
                          //         child: Text("Company Name",
                          //             style: theme.textTheme.bodyMedium))),
                          SizedBox(height: 6.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.h),
                              child: CustomTextFormField(
                                  title: 'Company Name',
                                  controller: nameController,
                                  hintText: "Enter Company Name",
                                  hintStyle: theme.textTheme.titleSmall!)),
                          SizedBox(height: 27.v),

                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.h),
                              child: CustomTextFormField(
                                  title: 'Role',
                                  controller: enterJobRoleController,
                                  hintText: "Enter Role",
                                  hintStyle: theme.textTheme.titleSmall!,
                                  textInputAction: TextInputAction.done)),
                          SizedBox(height: 27.v),
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: Padding(
                          //         padding: EdgeInsets.only(left: 3.h),
                          //         child: Text("Job Description",
                          //             style: theme.textTheme.bodyMedium))),
                          // SizedBox(height: 7.v),
                          // Padding(
                          //     padding: EdgeInsets.symmetric(horizontal: 3.h),
                          //     child: CustomTextFormField(
                          //         title: 'Password',
                          //         controller: enterJobDescriptionController,
                          //         hintText: "Job Description",
                          //         hintStyle: theme.textTheme.titleSmall!,
                          //         textInputAction: TextInputAction.done)),
                          // SizedBox(height: 27.v),

                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.h),
                              child: CustomTextFormField(
                                  title: 'Start Yea',
                                  textInputType: TextInputType.number,
                                  controller: startYearController,
                                  hintText: "Start Year",
                                  hintStyle: theme.textTheme.titleSmall!,
                                  textInputAction: TextInputAction.done)),
                          SizedBox(height: 27.v),
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: Padding(
                          //         padding: EdgeInsets.only(left: 3.h),
                          //         child: Text("End Year",
                          //             style: theme.textTheme.bodyMedium))),
                          SizedBox(height: 7.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.h),
                              child: CustomTextFormField(
                                  title: 'Description',
                                  textInputType: TextInputType.number,
                                  controller: startYearController,
                                  hintText: "Input here",
                                  hintStyle: theme.textTheme.titleSmall!,
                                  textInputAction: TextInputAction.done)),
                          SizedBox(height: 38.v),
                          CustomElevatedButton(
                            onPressed: (() {
                              //retrieve data from hive store
                              // var newUserData =
                              //     Hive.box("artisan").get("new_applicant");

                              // //update the array of maps
                              // //push each item from the form to the array

                              // newUserData.add({
                              //   "work_experience": selectedJobHistoryOption
                              // });

                              // newUserData.add(
                              //     {"job_role": enterJobRoleController.text});

                              // newUserData
                              //     .add({"company_name": nameController.text});

                              // newUserData.add({
                              //   "job_description":
                              //       enterJobDescriptionController.text
                              // });

                              // newUserData.add(
                              //     {"job_start_year": startYearController.text});

                              // newUserData.add(
                              //     {"job_end_year": endYearController.text});

                              // newUserData
                              //     .add({"commute_type": selectedCommutType});

                              // //re-save the updated array

                              // Hive.box("artisan")
                              //     .put("new_applicant", newUserData);

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        JSCreateAccountPageFiveScreen()),
                              );
                            }),
                            text: "Next",
                          ),
                        ]))))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
