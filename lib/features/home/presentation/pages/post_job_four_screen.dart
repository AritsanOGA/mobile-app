import 'package:artisan_oga/shared/widgets/custom_radio_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';

import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../presentation/payment_page_screen/payment_page_screen.dart';

class PostJobFourScreen extends StatefulWidget {
  @override
  _PostJobFourScreenState createState() => _PostJobFourScreenState();
}

class _PostJobFourScreenState extends State<PostJobFourScreen> {
  TextEditingController officeAddressController = TextEditingController();
  TextEditingController yearsOfExperienceController = TextEditingController();

  String genderRadioGroup = "";

  String accommodationRadioGroup = "";

  String accommodationForRadioGroup = "";

  String currencyRadioGroup = "";

  List<String> radioList = ["Yes", "No"];
  List<String> radioList1 = ["Female", "Male", "Both"];
  List<String> radioList2 = [
    "Package (Free(0.00)",
    "Silver (25,000.00)",
    "Gold(35,000.00)",
    "Platinum(50,000.00)"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 38.v),
                child: SingleChildScrollView(
                    child: Column(children: [
                  GestureDetector(
                      onTap: (() {
                        Hive.box("artisan").put("employer_user_data", null);

                        Hive.box("artisan").put("jobseeker_user_data", null);

                        Hive.box("artisan").put("user_role", null);

                        Navigator.of(context).pop();
                      }),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(children: [
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
                                    style:
                                        CustomTextStyles.titleMediumOnPrimary))
                          ]))),
                  SizedBox(height: 23.v),
                  SizedBox(height: 20.v),
                  CustomTextFormField(
                    title: 'Area',
                    titleStyle: CustomTextStyles.titleMediumMedium18,
                    hintText: 'Enter Area',
                    isBorderNone: true,
                  ),
                  SizedBox(height: 25.v),
                  CustomTextFormField(
                    title: 'Office Address',
                    titleStyle: CustomTextStyles.titleMediumMedium18,
                    hintText: 'Enter Office Address',
                    isBorderNone: true,
                  ),
                  SizedBox(height: 25.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("Is Accommodation Available?",
                              style: CustomTextStyles.titleMediumMedium18))),
                  SizedBox(height: 1.v),
                  Padding(
                      padding: EdgeInsets.only(left: 2.h, right: 3.h),
                      child: _buildYesNo(
                        context,
                      )),
                  SizedBox(height: 24.v),
                  CustomTextFormField(
                    title: 'Package',
                    titleStyle: CustomTextStyles.titleMediumMedium18,
                    hintText: 'Enter Package',
                    isBorderNone: true,
                  ),
                  SizedBox(height: 44.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 350.h,
                          margin: EdgeInsets.only(left: 2.h, right: 12.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "By continuing, you agree to ArtisanOga’s",
                                    style: CustomTextStyles.bodyMediumff3a332c),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "Jobs Terms\nand Conditions",
                                    style:
                                        CustomTextStyles.titleSmallfff7941e_1),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: "including our",
                                    style: CustomTextStyles.bodyMediumff3a332c),
                                TextSpan(text: " "),
                                TextSpan(
                                    text:
                                        "policies prohibiting\ndiscriminatory job posts.",
                                    style:
                                        CustomTextStyles.titleSmallfff7941e_1)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 18.v),
                  CustomElevatedButton(
                    onPressed: (() {
                      var newJobData = Hive.box("artisan").get("new_job_data");
                      newJobData.add(
                          {"accommodation_available": accommodationRadioGroup});
                      newJobData.add(
                          {"accommodation_for": accommodationForRadioGroup});
                      /* newJobData.add({
                              "compensation_type": compensationTypeRadioGroup
                            });*/
                      newJobData.add(
                          {"office_address": officeAddressController.text});

                      newJobData.add({"currency": currencyRadioGroup});

                      newJobData.add(
                          {"experience": yearsOfExperienceController.text});

                      Hive.box("artisan").put("new_job_data", newJobData);

                      print(newJobData);

                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Durations.long1,
                              child: PaymentPageScreen()));
                    }),
                    // height: 41.v,
                    // width: 110.h,
                    text: "Post Job",
                    // margin: EdgeInsets.only(right: 3.h),
                    // buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                    // buttonTextStyle: CustomTextStyles.titleMediumGray5018,
                    // alignment: Alignment.centerRight
                  ),
                  SizedBox(height: 5.v)
                ])))));
  }

  /// Section Widget
  Widget _buildOfficeAddress(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Office Address", style: CustomTextStyles.titleMediumMedium18),
          SizedBox(height: 8.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: officeAddressController,
              decoration: InputDecoration(
                hintText: 'Enter OfficeAddress',
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
  Widget _buildCurrency(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 17.h),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.only(),
              child: CustomRadioButton(
                  text: "Naira",
                  value: radioList2[0],
                  groupValue: currencyRadioGroup,
                  //  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      currencyRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(
                top: 11.v,
              ),
              child: CustomRadioButton(
                  text: "Dollar",
                  value: radioList2[1],
                  groupValue: currencyRadioGroup,
                  // padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      currencyRadioGroup = value;
                    });
                  })),
        ]));
  }

  /// Section Widget
  Widget _buildYesNo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 239.h),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.only(right: 74.h),
              child: CustomRadioButton(
                  text: "Yes",
                  value: radioList[0],
                  groupValue: accommodationRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      accommodationRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 58.h),
              child: CustomRadioButton(
                  text: "No",
                  value: radioList[1],
                  groupValue: accommodationRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      accommodationRadioGroup = value;
                    });
                  })),
        ]));
  }

  /// Section Widget
  Widget _buildAccommodationFor(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 239.h),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: CustomRadioButton(
                  text: "Male",
                  value: radioList1[0],
                  groupValue: accommodationForRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      accommodationForRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 20.h),
              child: CustomRadioButton(
                  text: "Female",
                  value: radioList1[1],
                  groupValue: accommodationForRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      accommodationForRadioGroup = value;
                    });
                  })),
          Padding(
              padding: EdgeInsets.only(top: 11.v, right: 20.h),
              child: CustomRadioButton(
                  text: "Both",
                  value: radioList1[2],
                  groupValue: accommodationForRadioGroup,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    setState(() {
                      accommodationForRadioGroup = value;
                    });
                  })),
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
