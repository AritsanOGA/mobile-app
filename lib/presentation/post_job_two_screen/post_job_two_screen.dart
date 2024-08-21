import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/widgets/custom_radio_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';

import '../post_job_three_screen/post_job_three_screen.dart';

// ignore_for_file: must_be_immutable
class PostJobTwoScreen extends StatefulWidget {
  @override
  _PostJobTwoScreenState createState() => _PostJobTwoScreenState();
}

class _PostJobTwoScreenState extends State<PostJobTwoScreen> {
  @override
  String skillLevelRadioGroup = "";

  List<String> radioList = [
    "Internship Graduate",
    "Semi-skilled",
    "Skilled-unskilled"
  ];

  String genderRadioGroup = "";

  String academicRadioGroup = "";

  List<String> radioList1 = ["Male", "Female", "No preferences"];

  String compensationTypeRadioGroup = "";

  List<String> radioList2 = ["Salary", "Pay-per-job"];

  List<String> radioList3 = ["BSC", "BA", "MSC", "OND", "HND", "SSCE", "NONE"];

  TextEditingController hireesNumberController = TextEditingController();

  TextEditingController companyNameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    hireesNumberController.text = "1";
    // companyNameController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      SizedBox(height: 26.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftOnprimary,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Text("Back",
                                style: CustomTextStyles.titleMediumOnPrimary))
                      ]),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("Skill Level",
                              style: CustomTextStyles.titleMediumMedium18)),
                      SizedBox(height: 20.v),
                      _buildSkillLevelRadioGroup(context),
                      SizedBox(height: 37.v),
                      Divider(indent: 3.h, endIndent: 2.h),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text("Educational Level",
                                  style:
                                      CustomTextStyles.titleMediumMedium18))),
                      SizedBox(height: 19.v),
                      _buildAcademicRadioGroup(context),
                      SizedBox(height: 1.v),
                      SizedBox(height: 24.v),
                      Divider(indent: 3.h, endIndent: 2.h),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("How many Hirees?",
                              style: CustomTextStyles.titleMediumMedium18)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h, right: 2.h),
                          child: _buildEnterNumberHiresRow(context,
                              enterNumberHires: hireesNumberController.text,
                              inputFields: "Select")),
                      SizedBox(height: 23.v),
                      Divider(indent: 3.h, endIndent: 2.h),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("Gender",
                              style: CustomTextStyles.titleMediumMedium18)),
                      SizedBox(height: 20.v),
                      _buildGenderRadioGroup(context),
                      SizedBox(height: 22.v),
                      Divider(indent: 3.h, endIndent: 2.h),
                      SizedBox(height: 15.v),
                      _buildCompanyNameRow(context),
                      SizedBox(height: 23.v),
                      Divider(indent: 3.h, endIndent: 2.h),
                      SizedBox(height: 23.v),

                      //  _buildCompensationTypeRadioGroup(context),
                      //  SizedBox(height: 19.v),
                      CustomElevatedButton(
                          onPressed: (() {
                            var newJobData =
                                Hive.box("artisan").get("new_job_data");
                            newJobData
                                .add({"industry": companyNameController.text});
                            newJobData.add({
                              "no_of_applicant": hireesNumberController.text
                            });
                            /* newJobData.add({
                              "compensation_type": compensationTypeRadioGroup
                            });*/
                            newJobData.add({"gender": genderRadioGroup});

                            newJobData
                                .add({"skill_level": skillLevelRadioGroup});

                            newJobData.add(
                                {"level_of_education": academicRadioGroup});

                            Hive.box("artisan").put("new_job_data", newJobData);

                            print(newJobData);

                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Durations.long1,
                                    child: PostJobThreeScreen()));
                          }),
                          height: 41.v,
                          width: 110.h,
                          text: "Next",
                          margin: EdgeInsets.only(right: 2.h),
                          buttonStyle:
                              CustomButtonStyles.fillSecondaryContainerTL20,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryContainer18,
                          alignment: Alignment.centerRight),
                      SizedBox(height: 17.v),
                    ])))));
  }

  /// Section Widget
  Widget _buildSkillLevelRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 146.h),
        child: Column(children: [
          CustomRadioButton(
              text: "Internship/Graduate Training",
              value: radioList[0],
              groupValue: skillLevelRadioGroup,
              onChange: (value) {
                setState(() {
                  skillLevelRadioGroup = value;
                });
              }),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 114.h),
              child: CustomRadioButton(
                  text: "Semi-Skilled",
                  value: radioList[1],
                  groupValue: skillLevelRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      skillLevelRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 85.h),
              child: CustomRadioButton(
                  text: "Skilled",
                  value: radioList[2],
                  groupValue: skillLevelRadioGroup,
                  onChange: (value) {
                    setState(() {
                      skillLevelRadioGroup = value;
                    });
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildGenderRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 239.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 74.h),
              child: CustomRadioButton(
                  text: "Male",
                  value: radioList1[0],
                  groupValue: genderRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      genderRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 58.h),
              child: CustomRadioButton(
                  text: "Female",
                  value: radioList1[1],
                  groupValue: genderRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      genderRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "No preferences",
                  value: radioList1[2],
                  groupValue: genderRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      genderRadioGroup = value;
                    });
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildAcademicRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 239.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 74.h),
              child: CustomRadioButton(
                  text: "BSC",
                  value: radioList3[0],
                  groupValue: academicRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      academicRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 58.h),
              child: CustomRadioButton(
                  text: "BA",
                  value: radioList3[1],
                  groupValue: academicRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      academicRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "MSC",
                  value: radioList3[2],
                  groupValue: academicRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      academicRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "OND",
                  value: radioList3[3],
                  groupValue: academicRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      academicRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "HND",
                  value: radioList3[4],
                  groupValue: academicRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      academicRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "SSCE",
                  value: radioList3[5],
                  groupValue: academicRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      academicRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                  text: "None",
                  value: radioList3[6],
                  groupValue: academicRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      academicRadioGroup = value;
                    });
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildCompanyNameRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Company Name", style: CustomTextStyles.titleMediumMedium18),
          SizedBox(height: 7.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: companyNameController,
              decoration: InputDecoration(
                hintText: 'Company Name ',
                hintStyle:
                    TextStyle(color: const Color.fromARGB(255, 42, 42, 42)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 81, 48, 36), width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 81, 48, 36), width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: TextStyle(color: const Color.fromARGB(255, 42, 42, 42)),
            ),
          ),
        ]));
  }

  /// Section Widget
  Widget _buildCompensationTypeRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 268.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 35.h),
              child: CustomRadioButton(
                  text: "Salary",
                  value: radioList2[0],
                  groupValue: compensationTypeRadioGroup,
                  onChange: (value) {
                    setState(() {
                      compensationTypeRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 11.v),
              child: CustomRadioButton(
                  text: "Pay per job",
                  value: radioList2[1],
                  groupValue: compensationTypeRadioGroup,
                  onChange: (value) {
                    setState(() {
                      compensationTypeRadioGroup = value;
                    });
                  }))
        ]));
  }

  /// Common widget
  Widget _buildEnterNumberHiresRow(
    BuildContext context, {
    required String enterNumberHires,
    required String inputFields,
  }) {
    return Padding(
        padding: EdgeInsets.only(top: 7.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: hireesNumberController,
              decoration: InputDecoration(
                hintStyle:
                    TextStyle(color: const Color.fromARGB(255, 42, 42, 42)),
                hintText: 'eg : 1',

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 81, 48, 36), width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 81, 48, 36), width: 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                // fillColor: Colors.brown[800], // Background color
                // filled: true,
              ),
              style: TextStyle(color: const Color.fromARGB(255, 42, 42, 42)),
            ),
          ),
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
