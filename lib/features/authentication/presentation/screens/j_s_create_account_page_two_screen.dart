import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../core/services/default.dart';
import 'j_s_create_account_page_three_screen.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPagetTwoScreen extends StatefulWidget {
  @override
  _JSCreateAccountPagetTwoScreenState createState() =>
      _JSCreateAccountPagetTwoScreenState();
}

class _JSCreateAccountPagetTwoScreenState
    extends State<JSCreateAccountPagetTwoScreen> {
  // Declare any variables or state properties here

  TextEditingController streetaddressController = TextEditingController();
  TextEditingController stateaddressController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  TextEditingController dateOfBirthController = TextEditingController();

  List<String> dropdownItemList3 = ["Item One", "Item Two", "Item Three"];

  var newUserData;

  String category = "";
  int selectedCategory = 0;
  String selectedCategoryName = "";

  int selectedCountry = 161;
  String selectedCountryName = "Nigeria";
  Future<dynamic>? countriesFuture;

  int selectedState = 306;
  String selectedStateName = "Lagos";
  Future<dynamic>? statesFuture;

  Future<dynamic>? categoriesFuture;

  Future<dynamic>? skillsFuture;

  String selectedDate = "yyyy-MM-dd";

  List<int> selectedSkills = [];

  @override
  void initState() {
    super.initState();
    // Call getCountries when the widget initializes

    categoriesFuture = Default().getCategories();
    countriesFuture = Default().getCountries();
    statesFuture = Default().getStates(selectedCountry.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            // resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                    child: Column(children: [
                      SizedBox(height: 26.v),
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Street Address",
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.h),
                          child: CustomTextFormField(
                              controller: streetaddressController,
                              hintText: "Enter Street Address",
                              hintStyle: theme.textTheme.titleSmall!)),
                      SizedBox(height: 29.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Country",
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      GestureDetector(
                        onTap: (() {
                          showCoutryList(context);
                        }),
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.h),
                            child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.v, vertical: 15.h),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 222, 222, 222),
                                ),
                              ),
                              child: Text(selectedCountryName),
                            )),
                      ),
                      SizedBox(height: 27.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("State of Residence",
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(right: 10.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: (() {
                                      showStates(context);
                                    }),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 12),
                                      child: Text(
                                        selectedStateName,
                                        maxLines: 1,
                                      ),
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color.fromARGB(255, 148, 148,
                                                148)), // Slightly grayish border
                                        borderRadius: BorderRadius.circular(
                                            5.0), // Rounded corners
                                      ),
                                    ))
                              ])),
                      SizedBox(height: 29.v),
                      _buildCity(context),
                      SizedBox(height: 29.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Job Category",
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 5.v),
                      GestureDetector(
                        onTap: (() {
                          showCategoriesList(context);
                        }),
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.h),
                            child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.v, vertical: 15.h),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 222, 222, 222),
                                ),
                              ),
                              child: Text(selectedCategoryName.isEmpty
                                  ? "Tap to select"
                                  : selectedCategoryName),
                            )),
                      ),
                      SizedBox(height: 27.v),
                      selectedCategory == 0
                          ? SizedBox()
                          : Text("Enter Your Skills", style: TextStyle()),
                      SizedBox(height: 9.v),
                      selectedCategory == 0
                          ? SizedBox()
                          : GestureDetector(
                              onTap: (() {
                                showSkillsList(context);
                              }),
                              child: Container(
                                  width: double.maxFinite,
                                  height: 50,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 10),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      border: Border.all(
                                          width: 1, color: Colors.grey)),
                                  child: Text(
                                    selectedSkills.length == 0
                                        ? "Select skills"
                                        : "${selectedSkills.length} selected",
                                    style: TextStyle(fontSize: 16.v),
                                  )),
                            ),
                      SizedBox(height: 27.v),
                      _buildDateOfBirth1(context),
                      SizedBox(height: 60.v),
                      CustomElevatedButton(
                          onPressed: (() {
                            if (streetaddressController.text.isNotEmpty &&
                                selectedDate != "yyyy-MM-dd" &&
                                cityController.text.isNotEmpty) {
                              //retrieve data from hive store
                              var newUserData =
                                  Hive.box("artisan").get("new_applicant");

                              //update the array of maps
                              //push each item from the form to the array

                              newUserData.add(
                                  {"street": streetaddressController.text});

                              newUserData.add({"state": selectedStateName});

                              newUserData
                                  .add({"country": selectedCountry.toString()});

                              newUserData.add({
                                "job_category": selectedCategory.toString()
                              });

                              newUserData.add({"dob": selectedDate});

                              newUserData.add({"city": cityController.text});

                              newUserData.add({"skills": selectedSkills});

                              //re-save the updated array

                              Hive.box("artisan")
                                  .put("new_applicant", newUserData);

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        JSCreateAccountPagetThreeScreen()),
                              );
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          JSCreateAccountPagetThreeScreen()));
                              // Fluttertoast.showToast(
                              //     msg: "Please fill all fields properly",
                              //     toastLength: Toast.LENGTH_SHORT,
                              //     gravity: ToastGravity.CENTER,
                              //     timeInSecForIosWeb: 1,
                              //     backgroundColor:
                              //         const Color.fromARGB(255, 86, 86, 86)
                              //             .withOpacity(0.6),
                              //     textColor: Colors.white,
                              //     fontSize: 16.0);
                            }
                          }),
                          text: "Next",
                          margin: EdgeInsets.symmetric(horizontal: 3.h)),
                    ])))));
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: (() {
              _showDatePickerBottomSheet(context);
            }),
            child: Padding(
                padding: EdgeInsets.only(right: 10.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date of Birth", style: theme.textTheme.bodyMedium),
                      SizedBox(height: 7.v),
                      Container(
                        width: 180.h,
                        child: Text(selectedDate),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 220, 219, 219))),
                      )
                    ]))));
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("City", style: theme.textTheme.bodyMedium),
          SizedBox(height: 5.v),
          CustomTextFormField(
              controller: cityController,
              hintText: "City",
              hintStyle: theme.textTheme.titleSmall!)
        ]));
  }

  /// Section Widget
  Widget _buildDateOfBirth1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildDateOfBirth(context)]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  void _showDatePickerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(top: 10),
          height: 400, // Adjust the height as needed
          child: Column(
            children: [
              SfDateRangePicker(
                onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.single,
              ),
              Container(
                  width: double.maxFinite,
                  child: Center(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              backgroundColor: Color.fromARGB(255, 0, 0,
                                  0), // Change this to your desired color
                            ),
                            child: Text(
                              'Close',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              backgroundColor: Color.fromARGB(255, 204, 82,
                                  0), // Change this to your desired color
                            ),
                            child: Text(
                              'Submit',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          ),
                        ]),
                  ))
            ],
          ),
        );
      },
    );
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

                                      print(selectedSkills
                                          .toString()); // Add to selectedCategories if checked
                                    } else {
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
                        child: CircularProgressIndicator(),
                      )); // Show a loader while data is being fetched
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
                                selectedCountry = countries[index]['id'];
                                selectedCountryName = countries[index]["name"];
                                statesFuture = Default()
                                    .getStates(selectedCountry.toString());
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
                        'No data available',
                        style: TextStyle(color: Colors.white),
                      ); // Show a message if there's no data
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
                      return Center(
                          child: Container(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(),
                      )); // Show a loader while data is being fetched
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

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    final pickedDate = DateFormat('yyyy-MM-dd').format(args.value);

    setState(() {
      selectedDate = pickedDate;
    });

    print(args.value);
  }
}
