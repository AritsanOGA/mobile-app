import 'package:artisan_oga/presentation/post_job_four_screen/post_job_four_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../core/services/default.dart';

class PostJobThreeScreen extends StatefulWidget {
  @override
  _PostJobThreeScreenState createState() => _PostJobThreeScreenState();
}

class _PostJobThreeScreenState extends State<PostJobThreeScreen> {
  TextEditingController _minSalaryController = TextEditingController();
  TextEditingController _maxSalaryController = TextEditingController();
  TextEditingController _cityController = TextEditingController();

  int selectedCountry = 161;
  String selectedCountryName = "Nigeria";

  int selectedState = 306;
  String selectedStateName = "Lagos";
  String selectedDateString = "Tap to select application deadline date";

  Future<dynamic>? countriesFuture;
  Future<dynamic>? statesFuture;

  var new_employer_info = [];

  List<String> dropdownItemList = [
    "Salary",
    "Pay Per Job",
  ];

  String selectedRemuneration = "Salary";

  @override
  void initState() {
    super.initState();
    // Call getCountries when the widget initializes

    countriesFuture = Default().getCountries();
    statesFuture = Default().getStates(selectedCountry.toString());
    _minSalaryController.text = "0.00";
    _maxSalaryController.text = "0.00";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 38.v),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Align(
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
                          ])),
                      SizedBox(height: 40.v),
                      CustomTextFormField(
                        title: 'Proposed Minimum Salary',
                        titleStyle: CustomTextStyles.titleMediumMedium18,
                        hintText: 'Enter Minimum Salary',
                        isBorderNone: true,
                      ),
                      SizedBox(height: 30.v),
                      CustomTextFormField(
                        title: 'Proposed Maximum Salary',
                        titleStyle: CustomTextStyles.titleMediumMedium18,
                        hintText: 'Enter Maximum Salary',
                        isBorderNone: true,
                      ),
                      SizedBox(height: 30.v),
                      CustomTextFormField(
                        title: 'Application Deadline Date',
                        titleStyle: CustomTextStyles.titleMediumMedium18,
                        hintText: 'Enter Deadline Date',
                        isBorderNone: true,
                      ),
                      SizedBox(height: 30.v),
                      selectedRemuneration == "Salary"
                          ? Container(
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text("Proposed Minimum Salary",
                                            style: CustomTextStyles
                                                .titleMediumMedium18))),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, right: 2.h),
                                    child: _buildEnterMinimumSalary(context,
                                        minimumSalary: "Enter Minimum Salary",
                                        inputFields: "")),
                                SizedBox(height: 23.v),
                                Divider(indent: 3.h, endIndent: 2.h),
                                SizedBox(height: 22.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text("Proposed Maximum Salary ",
                                            style: CustomTextStyles
                                                .titleMediumMedium18))),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, right: 2.h),
                                    child: _buildEnterMaximumSalary(context,
                                        maximumSalary: "Enter Maximum Salary",
                                        inputFields: "")),
                              ],
                            ))
                          : SizedBox(),
                      // GestureDetector(
                      //     onTap: (() {
                      //       _deadline(context);
                      //     }),
                      //     child: Align(
                      //         alignment: Alignment.centerLeft,
                      //         child: Padding(
                      //             padding: EdgeInsets.only(left: 3.h),
                      //             child: Text("Application Deadline Date",
                      //                 style: CustomTextStyles
                      //                     .titleMediumMedium18)))),
                       Padding(
                          padding: EdgeInsets.only(left: 3.h, right: 2.h),
                          child: _buildEnterApplicationDeadline(
                            context,
                          )),
                      SizedBox(height: 25.v),
                      Divider(indent: 3.h, endIndent: 2.h),
                      SizedBox(height: 22.v),
                      _buildCountry(context),
                      SizedBox(height: 23.v),
                      Divider(indent: 3.h, endIndent: 2.h),
                      SizedBox(height: 20.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("State",
                                  style:
                                      CustomTextStyles.titleMediumMedium18))),
                      SizedBox(height: 1.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h, right: 2.h),
                          child: _buildState(context,
                              maximumSalary: "Enter State",
                              inputFields: "Input Fields")),
                      Divider(),
                      SizedBox(height: 30.v),
                      
                      
                      SizedBox(height: 56.v),
                      CustomElevatedButton(
                        onPressed: (() {
                          // var newJobData =
                          //     Hive.box("artisan").get("new_job_data");
                          // newJobData
                          //     .add({"min_amount": _minSalaryController.text});
                          // newJobData
                          //     .add({"max_amount": _maxSalaryController.text});
                          // /* newJobData.add({
                          //     "compensation_type": compensationTypeRadioGroup
                          //   });*/
                          // newJobData.add(
                          //     {"application_deadline": selectedDateString});

                          // newJobData.add({"state": selectedStateName});

                          // newJobData.add({"city": _cityController.text});

                          // Hive.box("artisan").put("new_job_data", newJobData);

                          // print(newJobData);

                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Durations.long1,
                                  child: PostJobFourScreen()));
                        }),
                        // height: 41.v,
                        // width: 110.h,
                        text: "Next",
                        // margin: EdgeInsets.only(right: 2.h),
                        // buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                        // buttonTextStyle: CustomTextStyles.titleMediumGray5018,
                        // alignment: Alignment.centerRight
                      ),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildCountry(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        showCoutryList(context);
      }),
      child: Padding(
          padding: EdgeInsets.only(left: 3.h, right: 2.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Country", style: CustomTextStyles.titleMediumMedium18),
              SizedBox(height: 7.v),
              Text(
                  selectedCountryName == ""
                      ? "Enter Country"
                      : selectedCountryName,
                  style: CustomTextStyles.bodyMediumPrimaryContainer)
            ]),
            Padding(
                padding: EdgeInsets.only(top: 21.v, bottom: 9.v),
                child: Text("Tap to select country",
                    style: TextStyle(fontSize: 13, color: Colors.orange)))
          ])),
    );
  }

  /// Common widget
  Widget _buildState(
    BuildContext context, {
    required String maximumSalary,
    required String inputFields,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v),
              child: Text(selectedStateName,
                  style: CustomTextStyles.bodyMediumPrimaryContainer.copyWith(
                      color:
                          theme.colorScheme.primaryContainer.withOpacity(1)))),
          GestureDetector(
              onTap: (() {
                showStates(context);
              }),
              child: Padding(
                  padding: EdgeInsets.only(top: 12.v),
                  child: SvgPicture.asset(
                      "assets/images/Group 146add_circule.svg")))
        ]);
  }

  /// Common widget
  Widget _buildEnterMaximumSalary(
    BuildContext context, {
    required String maximumSalary,
    required String inputFields,
  }) {
    return Padding(
        padding: EdgeInsets.only(top: 7.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: _maxSalaryController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter number ',
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

  //date widget

  Widget _buildEnterApplicationDeadline(
    BuildContext context,
  ) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: Text(selectedDateString))
        ]);
  }

  /// Common widget
  Widget _buildEnterMinimumSalary(
    BuildContext context, {
    required String minimumSalary,
    required String inputFields,
  }) {
    return Padding(
        padding: EdgeInsets.only(top: 7.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              controller: _minSalaryController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Number',
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

  void _deadline(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(
              255, 255, 255, 255), // Deep brown background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),

          content: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: SfDateRangePicker(
              selectionMode: DateRangePickerSelectionMode.single,
              onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                if (args.value is DateTime) {
                  // A single date is selected
                  DateTime selectedDate = args.value;

                  String formattedDate =
                      DateFormat('EEEE, MMMM d, yyyy').format(selectedDate);
                  print('Selected date: $formattedDate');

                  selectedDateString = formattedDate;

                  setState(() {});
                }
              },
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 255, 255, 255), // Yellow button color
              ),
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  showCoutryList(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Country List'),
            content: Container(
                height: 500, // Set height as needed
                width: 300, // Set width as needed
                child: FutureBuilder<dynamic>(
                  future: countriesFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: Container(
                          height: 50,
                          width: 50,
                        ),
                      ); // Show a loader while data is being fetched
                    } else if (snapshot.hasError) {
                      return Text(
                          'Error: ${snapshot.error}'); // Show error message if there's an error
                    } else if (snapshot.hasData) {
                      // Data is fetched successfully, use it here
                      var countries = snapshot.data;
                      return ListView.builder(
                        itemCount: countries.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: (() {
                              setState(() {
                                selectedCountry = countries[index]['id'];
                                selectedCountryName = countries[index]["name"];
                                statesFuture = Default()
                                    .getStates(selectedCountry.toString());
                              });

                              print(selectedCountryName);

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

  showStates(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('States List'),
            content: Container(
                height: 500, // Set height as needed
                width: 300, // Set width as needed
                child: FutureBuilder<dynamic>(
                  future: statesFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: Container(
                          height: 50,
                          width: 50,
                        ),
                      ); // Show a loader while data is being fetched
                    } else if (snapshot.hasError) {
                      return Text(
                          'Error: ${snapshot.error}'); // Show error message if there's an error
                    } else if (snapshot.hasData) {
                      // Data is fetched successfully, use it here
                      var states = snapshot.data;
                      return ListView.builder(
                        itemCount: states.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: (() {
                              setState(() {
                                print(states[index]['id'].toString());
                                selectedState = states[index]['id'];
                                selectedStateName = states[index]["name"];
                              });

                              print(selectedCountryName);

                              Navigator.pop(context);
                            }),
                            title: Text(
                              states[index]['name'],
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
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
