import 'dart:io';

import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/services/auth.dart';
import '../../../../core/services/default.dart';
import 'j_s_create_account_page_six_screen.dart';
import '../../../../presentation/js_account_create_success/js_account_create_success.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageFiveScreen extends StatefulWidget {
  JSCreateAccountPageFiveScreen({Key? key}) : super(key: key);

  @override
  _JSCreateAccountPageFiveScreenState createState() =>
      _JSCreateAccountPageFiveScreenState();
}

class _JSCreateAccountPageFiveScreenState
    extends State<JSCreateAccountPageFiveScreen> {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController yearsOfExperienceEditTextController =
      TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController inputHereEditTextController = TextEditingController();

  TextEditingController guarantorNameController = TextEditingController();

  TextEditingController guarantorEmailController = TextEditingController();

  TextEditingController guarantorPhoneController = TextEditingController();

  TextEditingController guarantorAddressController = TextEditingController();

  File? file;
  File? image;
  File? resume;

  Future<dynamic>? skillsFuture;

  @override
  void initState() {
    super.initState();
    // Call getCountries when the widget initializes

    skillsFuture = Default().getSkills();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      SizedBox(height: 6.v),
                      // Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: Row(children: [
                      //       CustomImageView(
                      //           imagePath: ImageConstant.imgArrowLeftOnprimary,
                      //           height: 16.adaptSize,
                      //           width: 16.adaptSize,
                      //           margin: EdgeInsets.symmetric(vertical: 2.v),
                      //           onTap: () {
                      //             onTapImgArrowLeft(context);
                      //           }),
                      //       Padding(
                      //           padding: EdgeInsets.only(left: 7.h),
                      //           child: Text("Back",
                      //               style: CustomTextStyles.titleMediumOnPrimary))
                      //     ])),
                      // SizedBox(height: 40.v),

                      CustomDropDown(
                        title: 'Select Job Category',
                      ),

                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.h),
                          child: CustomTextFormField(
                              title: 'Years of Experience',
                              controller: guarantorNameController,
                              hintText: "e.g 3+ years",
                              hintStyle: theme.textTheme.titleSmall!)),
                      SizedBox(height: 27.v),

                      CustomDropDown(
                        title: "Select Skill",
                      ),

                      SizedBox(height: 29.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Upload Your CV",
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 10.v),
                      //pick resume widget
                      Container(
                          margin: EdgeInsets.only(right: 10.h),
                          padding: EdgeInsets.symmetric(
                              vertical: 6.v, horizontal: 5.v),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                    onTap: () {
                                      pickImage();
                                    },
                                    child: Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: ColorSchemes
                                                .primaryColorScheme.primary),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Text('choose file',
                                                style: theme
                                                    .textTheme.labelMedium
                                                    ?.copyWith(
                                                        color: Colors.white)),
                                          ),
                                        ))),
                                SizedBox(width: 5.v),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 5.v, right: 5.v),
                                  child: Text(
                                      image == null
                                          ? "No file chosen"
                                          : "Image selected",
                                      style: theme.textTheme.labelLarge),
                                )
                              ])),

                      SizedBox(height: 29.v),

                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.h),
                          child: CustomTextFormField(
                              title: 'Describe what you can do',
                              textInputType: TextInputType.emailAddress,
                              controller: guarantorEmailController,
                              hintText: "Input here",
                              maxLines: 5,
                              hintStyle: theme.textTheme.titleSmall!)),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                          text: 'Next',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        JSCreateAccountPageSixScreen()));
                          }),
                      // _buildNextButton(context),
                      SizedBox(height: 74.v),
                      SizedBox(
                          width: 130.h,
                          child: Divider(color: theme.colorScheme.onPrimary))
                    ])))));
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

  Future<void> pickResumeFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result == null || result.files.single.path == null) return;

      final filePath = result.files.single.path!;
      final pickedFile = File(filePath);
      setState(() {
        file = pickedFile;
        resume = pickedFile;
      });
    } catch (e) {
      print('Failed to pick file: $e');
    }
  }

  /// Section Widget
  Widget _buildChooseImageButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (() {
        pickImage();
      }),
      text: "Choose File",
    );
  }

  /// Section Widget
  Widget _buildChooseFileButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (() {
        pickResumeFile();
      }),
      text: "Choose File",
    );
  }

  /// Section Widget
  Widget _buildUploadPassport(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildChooseImageButton(context),
              Padding(
                  padding: EdgeInsets.only(left: 5.h, top: 8.v, bottom: 10.v),
                  child: Text(
                      image == null ? "No file chosen" : "1 file chosen",
                      style: theme.textTheme.labelLarge))
            ]));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (() {
        //variables
        String? fullName,
            email,
            password,
            confirmPassword,
            phone,
            country,
            dob,
            state,
            city,
            street,
            gender,
            jobCategory,
            educationQualification,
            schoolName,
            courseName,
            workExperience,
            jobRole,
            jobDescription,
            jobStartYear,
            jobEndYear,
            companyName,
            awardYear,
            awardTitle,
            commuteType;
        ;

        List<int>? skills;

        EasyLoading.show();
        var newUserData = Hive.box("artisan").get("new_applicant");

        print("data " + newUserData.toString());

        print("sent phone: " + newUserData.first["full_name"].toString());

        for (var item in newUserData) {
          if (item.containsKey("full_name")) {
            fullName = item["full_name"];
          }
          if (item.containsKey("phone")) {
            phone = item["phone"];
          }
          if (item.containsKey("email")) {
            email = item["email"];
          }
          if (item.containsKey("password")) {
            password = item["password"];
          }
          if (item.containsKey("confirm_password")) {
            confirmPassword = item["confirm_password"];
          }
          if (item.containsKey("dob")) {
            dob = item["dob"];
          }

          if (item.containsKey("state")) {
            state = item["state"].toString();
          }

          if (item.containsKey("city")) {
            city = item["city"];
          }

          if (item.containsKey("street")) {
            street = item["street"];
          }

          if (item.containsKey("gender")) {
            gender = item["gender"];
          }

          if (item.containsKey("country")) {
            country = item["country"];
          }

          if (item.containsKey("job_category")) {
            jobCategory = item["job_category"];
          }

          if (item.containsKey("educational_qualification")) {
            educationQualification = item["educational_qualification"];
          }

          if (item.containsKey("school_name")) {
            schoolName = item["school_name"];
          }

          if (item.containsKey("course_name")) {
            courseName = item["course_name"];
          }

          if (item.containsKey("work_experience")) {
            workExperience = item["work_experience"];
          }

          if (item.containsKey("company_name")) {
            companyName = item["company_name"];
          }

          if (item.containsKey("job_role")) {
            jobRole = item["job_role"];
          }

          if (item.containsKey("job_description")) {
            jobDescription = item["job_description"];
          }

          if (item.containsKey("job_start_year")) {
            jobStartYear = item["job_start_year"];
          }

          if (item.containsKey("job_end_year")) {
            jobEndYear = item["job_end_year"];
          }

          if (item.containsKey("award_title")) {
            awardTitle = item["award_title"];
          }

          if (item.containsKey("award_year")) {
            awardYear = item["award_year"];
          }

          if (item.containsKey("skills")) {
            skills = item["skills"];
          }

          if (item.containsKey("gender")) {
            gender = item["gender"];
          }

          if (item.containsKey("commute_type")) {
            commuteType = item["commute_type"];
          }
          // Check and print other keys you need
        }

        Auth()
            .newCandidate(
                fullname: fullName!,
                email: email,
                password: password,
                confirmPassword: confirmPassword,
                phone: phone,
                address: street,
                country: int.parse(country.toString()),
                dob: dob,
                state: state,
                city: city,
                resume: resume,
                employmentHistory: workExperience,
                companyName: companyName,
                jobDescription: jobDescription,
                jobRole: jobRole,
                startYear: jobStartYear,
                end_year: jobEndYear,
                categories: int.parse(jobCategory.toString()),
                qualification: educationQualification,
                schoolName: schoolName,
                courseName: courseName,
                awardTitle: awardTitle,
                awardYear: awardYear,
                artisan_skills: skills,
                guarantorName: guarantorNameController.text,
                guarantorAddress: guarantorAddressController.text,
                guarantorPhone: guarantorPhoneController.text,
                guarantorEmail: guarantorEmailController.text,
                gender: gender,
                passport: image,
                commuteType: commuteType)
            .then((value) => {
                  if (value == "success")
                    {
                      EasyLoading.dismiss(),
                      Fluttertoast.showToast(
                          msg: "Your account has been successfully created",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: const Color.fromARGB(255, 86, 86, 86)
                              .withOpacity(0.6),
                          textColor: Colors.white,
                          fontSize: 16.0),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JSCreateAccountSuccess()),
                      )
                    }
                  else
                    {
                      EasyLoading.dismiss(),
                      Fluttertoast.showToast(
                          msg: value,
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: const Color.fromARGB(255, 86, 86, 86)
                              .withOpacity(0.6),
                          textColor: Colors.white,
                          fontSize: 16.0),
                    }
                });
      }),
      text: "Finish",
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
