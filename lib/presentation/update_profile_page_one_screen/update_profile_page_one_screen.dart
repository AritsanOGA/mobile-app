import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_subtitle.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../core/services/default.dart';

// ignore_for_file: must_be_immutable
class UpdateProfilePageOneScreen extends StatefulWidget {
  UpdateProfilePageOneScreen({Key? key}) : super(key: key);

  @override
  _UpdateProfilePageOneScreenState createState() =>
      _UpdateProfilePageOneScreenState();
}

class _UpdateProfilePageOneScreenState
    extends State<UpdateProfilePageOneScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController inputherevalueController = TextEditingController();
  String selectedDate = "yyyy-MM-dd";
  TextEditingController dateOfBirthController = TextEditingController();

  int selectedCountry = 161;
  String selectedCountryName = "Nigeria";
  Future<dynamic>? countriesFuture;

  int selectedState = 306;
  String selectedStateName = "Lagos";
  Future<dynamic>? statesFuture;
  List<String> dropdownItemLGender = ["Male", "Female"];
  List<String> dropdownItemJobType = [
    "Full Time",
    "Tempoary",
    "Contract",
    "Part Time"
  ];
  List<String> dropdownItemCompensationType = [
    "Salary",
    "Pay Per Job",
  ];
  String gender = "", jobType = "", compensationType = "";

  @override
  void initState() {
    super.initState();
    // Call getCountries when the widget initializes

    countriesFuture = Default().getCountries();
    statesFuture = Default().getStates(selectedCountry.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.h, vertical: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          // First Name TextField
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'First Name',
                              labelStyle:
                                  TextStyle(color: Colors.orange, fontSize: 14),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // Last Name TextField
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              labelStyle:
                                  TextStyle(color: Colors.orange, fontSize: 14),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // Street Address TextField
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Street Address',
                              labelStyle:
                                  TextStyle(color: Colors.orange, fontSize: 14),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // City TextField
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'City',
                              labelStyle:
                                  TextStyle(color: Colors.orange, fontSize: 14),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // Phone TextField (accepts only numbers)
                          TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: 'Phone',
                              labelStyle:
                                  TextStyle(color: Colors.orange, fontSize: 14),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 220, 219, 219)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          _buildDateOfBirth(context),
                          SizedBox(
                            height: 20,
                          ),

                          Padding(
                              padding: EdgeInsets.only(right: 10.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Country",
                                        style: theme.textTheme.bodyMedium),
                                    SizedBox(height: 5.v),
                                    GestureDetector(
                                        onTap: (() {
                                          setState(() {});
                                          showCoutryList(context);
                                        }),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 12),
                                          child: Text(
                                            selectedCountryName,
                                            maxLines: 1,
                                          ),
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color.fromARGB(
                                                    255,
                                                    148,
                                                    148,
                                                    148)), // Slightly grayish border
                                            borderRadius: BorderRadius.circular(
                                                5.0), // Rounded corners
                                          ),
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(right: 1.h),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("State of Residence",
                                                  style: theme
                                                      .textTheme.bodyMedium),
                                              SizedBox(height: 5.v),
                                              GestureDetector(
                                                  onTap: (() {
                                                    showStates(context);
                                                  }),
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 12,
                                                            horizontal: 12),
                                                    child: Text(
                                                      selectedStateName,
                                                      maxLines: 1,
                                                    ),
                                                    width: double.maxFinite,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color.fromARGB(
                                                              255,
                                                              148,
                                                              148,
                                                              148)), // Slightly grayish border
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0), // Rounded corners
                                                    ),
                                                  ))
                                            ]))
                                  ])),

                          SizedBox(
                            height: 20,
                          ),

                          Text(
                            "Gender",
                            style: TextStyle(fontSize: 13),
                          ),

                          SizedBox(height: 6.v),
                          // Padding(
                          //     padding: EdgeInsets.only(right: 1.h),
                          //     child: CustomDropDown(
                          //         width: double.maxFinite,
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
                          //         hintText: "Male",
                          //         items: dropdownItemLGender,
                          //         onChanged: (value) {
                          //           print(value.toString());

                          //           setState(() {
                          //             gender = value.toString();
                          //           });
                          //         })),

                          SizedBox(
                            height: 20,
                          ),

                          Text(
                            "Job Type",
                            style: TextStyle(fontSize: 13),
                          ),

                          SizedBox(height: 6.v),
                          // Padding(
                          //     padding: EdgeInsets.only(right: 1.h),
                          //     child: CustomDropDown(
                          //         width: double.maxFinite,
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
                          //         hintText: "Full Time",
                          //         items: dropdownItemJobType,
                          //         onChanged: (value) {
                          //           print(value.toString());

                          //           setState(() {
                          //             jobType = value.toString();
                          //           });
                          //         })),

                          SizedBox(
                            height: 20,
                          ),

                          Text(
                            "Compensation Type",
                            style: TextStyle(fontSize: 13),
                          ),

                          SizedBox(height: 6.v),
                          // Padding(
                          //     padding: EdgeInsets.only(right: 1.h),
                          //     child: CustomDropDown(
                          //         width: double.maxFinite,
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
                          //         hintText: "Salary",
                          //         items: dropdownItemJobType,
                          //         onChanged: (value) {
                          //           print(value.toString());

                          //           setState(() {
                          //             compensationType = value.toString();
                          //           });
                          //         })),
                          SizedBox(
                            height: 20,
                          ),

                          CustomElevatedButton(
                            onPressed: (() {
                              if ( //_emailController.text.isNotEmpty &&
                                  firstNameController.text.isNotEmpty &&
                                      lastNameController.text.isNotEmpty) {
                                EasyLoading.show();
                                /*

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

                        */
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
                            text: "Update",
                            // buttonTextStyle:
                            //     CustomTextStyles.titleMediumGray5001,
                          ),
                        ])))));
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
                            onTap: (() async {
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

  Widget _buildDateOfBirth(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
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
                        width: double.maxFinite,
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
        title: AppbarSubtitle(text: "Edit Profile"));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "Next", onPressed: () {  },
        // margin: EdgeInsets.only(left: 1.h),
        // buttonStyle: CustomButtonStyles.fillSecondaryContainerTL24,
        // buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainerSemiBold
        );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    final pickedDate = DateFormat('yyyy-MM-dd').format(args.value);

    setState(() {
      selectedDate = pickedDate;
    });

    print(args.value);
  }
}
