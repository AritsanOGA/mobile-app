import 'package:artisan_oga/presentation/post_job_two_screen/post_job_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_subtitle.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/shared/widgets/custom_icon_button.dart';
import 'package:artisan_oga/shared/widgets/custom_radio_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:page_transition/page_transition.dart';

import '../../core/services/default.dart';
import '../../shared/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PostJobOnePage extends StatefulWidget {
  @override
  _PostJobOnePageState createState() => _PostJobOnePageState();
}

class _PostJobOnePageState extends State<PostJobOnePage> {
  String workTypeRadioGroup = "";

  List<String> radioList = ["Onsite", "Hybrid", "Remote"];

  String jobTypeRadioGroup = "";
  String jobTypeRadioGroup1 = "";
  String jobEducationRadioGroup2 = "";

  List<String> radioList1 = ["Contract", "Full time", "Part_time", "Temporary"];

  List<String> radioList2 = [
    "Primary school",
    "Junior secondary",
    "High school",
    "University",
    "Masters",
    "Post Graduate Edu.",
  ];

  TextEditingController jobTitleController = TextEditingController();
  TextEditingController jobDescriptionController = TextEditingController();
  TextEditingController jobPositionController = TextEditingController();
  String category = "";
  int selectedCategory = 0;
  String selectedCategoryName = "";

  Future<dynamic>? categoriesFuture;

  Future<dynamic>? skillsFuture;
  List<int> selectedSkills = []; // List to store selected categories
  List<String> selectedSkillsName = [];

  @override
  void initState() {
    super.initState();

    jobTitleController.text = "";
    jobDescriptionController.text = "";
    // Call getCountries when the widget initializes

    categoriesFuture = Default().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 3.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Fields for Job Creation",
                              style: CustomTextStyles
                                  .titleMediumPrimaryContainerMedium))),
                  SizedBox(height: 23.v),
                  _buildJobTitleRow(context),
                  //  SizedBox(height: 22.v),
                  //  Divider(),
                  //  _buildPosition(context),
                  SizedBox(height: 22.v),
                  Divider(),
                  _buildSelectCategoryRow(context),
                  SizedBox(height: 23.v),
                  Divider(),
                  SizedBox(height: 22.v),
                  // _buildSelectRequiredRow(context),
                  // SizedBox(height: 23.v),
                  // Divider(),
                  //  SizedBox(height: 22.v),
                  _buildJobDescriptionRow(context),
                  SizedBox(height: 23.v),
                  Divider(),
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Commute Type",
                              style: CustomTextStyles.titleMediumMedium18))),
                  SizedBox(height: 18.v),
                  _buildWorkTypeRadioGroup(context),
                  SizedBox(height: 27.v),
                  Divider(),
                  SizedBox(height: 23.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Job Type",
                              style: CustomTextStyles.titleMediumMedium18))),
                  SizedBox(height: 18.v),
                  _buildJobTypeRadioGroup(context),
                  SizedBox(height: 27.v),
                  CustomElevatedButton(
                      onPressed: (() {
                        var newJobData = [
                          {"job_title": jobTitleController.text},
                          {"position": jobPositionController.text},
                          {"job_description": jobDescriptionController.text},
                          {"business_category_id": selectedCategory},
                          //  {"slected_skills": selectedSkills},
                          {"work_type": workTypeRadioGroup},
                          {"hire_type": jobTypeRadioGroup1}
                        ];

                        print(newJobData.toString());

                        Hive.box("artisan").put("new_job_data", newJobData);

                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Durations.long1,
                                child: PostJobTwoScreen()));
                      }),
                      // height: 41.v,
                      // width: 110.h,
                      text: "Next",
                      // margin: EdgeInsets.only(right: 2.h),
                      // buttonStyle:
                      //     CustomButtonStyles.fillSecondaryContainerTL20,
                      // buttonTextStyle:
                      //     CustomTextStyles.titleMediumOnPrimaryContainer18,
                      // alignment: Alignment.centerRight
                      ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 20,
                  ),
                ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 22.h, top: 20.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Post a Job"));
  }

  /// Section Widget
  Widget _buildJobTitleRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h, right: 9.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Job Title", style: CustomTextStyles.titleMediumMedium18),
        SizedBox(height: 10.v),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            controller: jobTitleController,
            decoration: InputDecoration(
              hintText: 'Enter job title',
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
              // fillColor: Colors.brown[800], // Background color
              // filled: true,
            ),
            style: TextStyle(color: const Color.fromARGB(255, 46, 46, 46)),
          ),
        ),
      ]),
    );
  }

  /// Section Widget
  Widget _buildSelectCategoryRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Select a Category",
                style: CustomTextStyles.titleMediumMedium18),
            SizedBox(height: 7.v),
            Text(
                selectedCategoryName.isEmpty
                    ? "No category selected"
                    : selectedCategoryName,
                style: CustomTextStyles.bodyMediumPrimaryContainer)
          ]),
          GestureDetector(
              onTap: (() {
                showCategoriesList(context);
              }),
              child: Padding(
                  padding: EdgeInsets.only(top: 12.v),
                  child: SvgPicture.asset(
                      "assets/images/Group 146add_circule.svg")))
        ]));
  }

  /// Section Widget
  Widget _buildSelectRequiredRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 1.h, right: 15.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Select Required Skill",
                            style: CustomTextStyles.titleMediumMedium18),
                        SizedBox(height: 7.v),
                        Text(
                            selectedSkills.length < 1
                                ? "e.g Data Analyst"
                                : selectedSkillsName.toString(),
                            style: CustomTextStyles.bodyMediumPrimaryContainer)
                      ]),
                  GestureDetector(
                      onTap: (() {
                        showSkillsList(context);
                      }),
                      child: Padding(
                          padding: EdgeInsets.only(top: 12.v),
                          child: SvgPicture.asset(
                              "assets/images/fe_arrow-downdown_arrow.svg")))
                ])));
  }

  /// Section Widget
  Widget _buildJobDescriptionRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Job Description", style: CustomTextStyles.titleMediumMedium18),
          SizedBox(height: 7.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: jobDescriptionController,
              decoration: InputDecoration(
                hintStyle:
                    TextStyle(color: const Color.fromARGB(255, 42, 42, 42)),
                hintText: 'Enter job description',

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

  /// Section Widget
  Widget _buildPosition(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Job Position", style: CustomTextStyles.titleMediumMedium18),
          SizedBox(height: 7.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: jobPositionController,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Color.fromARGB(255, 75, 75, 75)),
                hintText: 'Enter job position',

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

  /// Section Widget
  Widget _buildWorkTypeRadioGroup(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 8.h, right: 292.h),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: CustomRadioButton(
                      text: "Onsite",
                      value: radioList[0],
                      groupValue: workTypeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        setState(() {
                          workTypeRadioGroup = value;

                          print("work type: ${workTypeRadioGroup}");
                        });
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 11.v, right: 6.h),
                  child: CustomRadioButton(
                      text: "Hybrid",
                      value: radioList[1],
                      groupValue: workTypeRadioGroup,
                      onChange: (value) {
                        setState(() {
                          workTypeRadioGroup = value;
                          print("work type: ${workTypeRadioGroup}");
                        });
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: CustomRadioButton(
                      text: "Remote",
                      value: radioList[2],
                      groupValue: workTypeRadioGroup,
                      onChange: (value) {
                        setState(() {
                          workTypeRadioGroup = value;
                          print("work type: ${workTypeRadioGroup}");
                        });
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildJobTypeRadioGroup(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 8.h, right: 270.h),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(right: 14.h),
                  child: CustomRadioButton(
                      text: "Contract",
                      value: radioList1[0],
                      groupValue: jobTypeRadioGroup1,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        setState(() {
                          jobTypeRadioGroup1 = value;
                        });
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 11.v, right: 12.h),
                  child: CustomRadioButton(
                      text: "Full Time",
                      value: radioList1[1],
                      groupValue: jobTypeRadioGroup1,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        setState(() {
                          jobTypeRadioGroup1 = value;
                        });
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 11.v, right: 7.h),
                  child: CustomRadioButton(
                      text: "Part Time",
                      value: radioList1[2],
                      groupValue: jobTypeRadioGroup1,
                      onChange: (value) {
                        setState(() {
                          jobTypeRadioGroup1 = value;
                        });
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 11.v),
                  child: CustomRadioButton(
                      text: "Temporary",
                      value: radioList1[3],
                      groupValue: jobTypeRadioGroup1,
                      onChange: (value) {
                        setState(() {
                          jobTypeRadioGroup1 = value;
                        });
                      }))
            ])));
  }

  showSkillsList(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Container(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Text(
                      'Skills List',
                      style: TextStyle(fontSize: 14),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (() {
                        setState(() {});
                        Navigator.pop(context);
                      }),
                      child: Text(
                        "Done",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                )),
            content: Container(
                height: 500, // Set height as needed
                width: 300, // Set width as needed
                child: FutureBuilder<dynamic>(
                  future: skillsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                          child: SizedBox(
                              height: 30,
                              width: 30,
                              child:
                                  CircularProgressIndicator())); // Show a loader while data is being fetched
                    } else if (snapshot.hasError) {
                      return Text(
                          'Error: ${snapshot.error}'); // Show error message if there's an error
                    } else if (snapshot.hasData) {
                      // Data is fetched successfully, use it here
                      return StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CheckboxListTile(
                                fillColor: MaterialStateColor.resolveWith(
                                    (Set<MaterialState> states) {
                                  if (!states
                                      .contains(MaterialState.selected)) {
                                    return Colors
                                        .white; // Background color when checked
                                  } else {
                                    return Colors
                                        .orange; // Background color when unchecked
                                  }
                                }),
                                title: Text(snapshot.data[index]["name"],
                                    style: TextStyle(color: Colors.black)),
                                value: selectedSkills
                                    .contains(snapshot.data[index]["id"]),
                                onChanged: (bool? value) {
                                  setState(() {
                                    if (value != null && value) {
                                      selectedSkills
                                          .add(snapshot.data[index]["id"]);

                                      selectedSkillsName
                                          .add(snapshot.data[index]["name"]);

                                      print(selectedSkills
                                          .toString()); // Add to selectedCategories if checked
                                    } else {
                                      selectedSkillsName
                                          .remove(snapshot.data[index]["name"]);
                                      selectedSkills.remove(snapshot.data[index]
                                          ["id"]); // Remove if unchecked
                                    }
                                  });

                                  setState(() {});
                                },
                              );
                            });
                      });
                    } else {
                      print(snapshot.toString());
                      return Text(
                          'No data available'); // Show a message if there's no data
                    }
                  },
                )));
      },
    );
  }

  showCategoriesList(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Categories List'),
            content: Container(
                height: 500, // Set height as needed
                width: 300, // Set width as needed
                child: FutureBuilder<dynamic>(
                  future: categoriesFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator(); // Show a loader while data is being fetched
                    } else if (snapshot.hasError) {
                      return Text(
                          'Error: ${snapshot.error}'); // Show error message if there's an error
                    } else if (snapshot.hasData) {
                      // Data is fetched successfully, use it here
                      List<dynamic> countries = snapshot.data as List<dynamic>;
                      return ListView.builder(
                        itemCount: countries.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: (() {
                              setState(() {
                                selectedCategory = countries[index]['id'];
                                selectedCategoryName = countries[index]["name"];

                                print(
                                    "category ${selectedCategory.toString()}");

                                skillsFuture = Default()
                                    .getSkills(categoryID: selectedCategory);
                              });

                              Navigator.pop(context);
                            }),
                            title: Text(
                              countries[index]['name'],
                              style: TextStyle(color: Colors.black),
                            ), // Assuming 'name' is a key in your country data
                          );
                        },
                      );
                    } else {
                      print(snapshot.toString());
                      return Text(
                          'No data available'); // Show a message if there's no data
                    }
                  },
                )));
      },
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
