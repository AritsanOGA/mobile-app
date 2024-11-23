import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'j_s_create_account_page_four_screen.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPagetThreeScreen extends StatefulWidget {
  @override
  _JSCreateAccountPagetThreeScreenState createState() =>
      _JSCreateAccountPagetThreeScreenState();
}

class _JSCreateAccountPagetThreeScreenState
    extends State<JSCreateAccountPagetThreeScreen> {
  //
  List<String> dropdownItemList = ["Yes", "No Education"];

  TextEditingController schoolNameController = TextEditingController();

  TextEditingController enterAwardYearController = TextEditingController();

  TextEditingController courseNameController = TextEditingController();

  TextEditingController awardTitleController = TextEditingController();

  String selectedEducationOption = "Yes";

  String selectedDate = "yyyy-MM-dd";

  @override
  void initState() {
    super.initState();
    // Call getCountries when the widget initializes

    schoolNameController.text = "";
    enterAwardYearController.text = "";
    courseNameController.text = "";
    awardTitleController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
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
                          // SizedBox(height: 10.v),

                          SizedBox(height: 6.v),
                          BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return CustomDropDown<String>(
                                title: "Educational Qualification",
                                items: authBloc.educationalQualification,
                                selectedItem: state.educationalQualification ??
                                    'No Education',
                                //  state.gender ?? "--Select--",
                                itemLabel: (gender) => gender,
                                onChanged: (value) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent
                                            .updateSelectedEducationQualification(
                                                value ?? ''),
                                      );
                                  print('ssss ${value}');
                                },
                              );
                            },
                          ),
                          BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              if (state.educationalQualification ==
                                  "No Education") {
                                return SizedBox();
                              } else {
                                return Column(
                                  children: [
                                    SizedBox(height: 28.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.h),
                                        child: CustomTextFormField(
                                            title: 'School Name',
                                            controller: schoolNameController,
                                            hintText: "Enter School Name",
                                            hintStyle:
                                                theme.textTheme.titleSmall!)),
                                    // : SizedBox(),
                                    SizedBox(height: 27.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.h),
                                        child: CustomTextFormField(
                                            title: 'School Name',
                                            controller: schoolNameController,
                                            hintText: "Enter School Name",
                                            hintStyle:
                                                theme.textTheme.titleSmall!)),
                                    // : SizedBox(),
                                    SizedBox(height: 27.v),
                                    // selectedEducationOption == "Yes"
                                    //     ?
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 3.h),
                                        child: CustomTextFormField(
                                            title: 'Graduation Year',
                                            controller: courseNameController,
                                            hintText: "Enter Graduation Year",
                                            hintStyle:
                                                theme.textTheme.titleSmall!,
                                            textInputAction:
                                                TextInputAction.done)),
                                    // : SizedBox(),
                                    SizedBox(height: 27.v),
                                    CustomTextFormField(
                                        title: 'Certificate Obtained',
                                        controller: courseNameController,
                                        hintText: "Enter Certificate",
                                        hintStyle: theme.textTheme.titleSmall!,
                                        textInputAction: TextInputAction.done),
                                  ],
                                );
                              }
                            },
                          ),

                          SizedBox(height: 54.v),
                          CustomElevatedButton(
                            onPressed: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        JSCreateAccountPageFourScreen()),
                              );
                            }),
                            text: "Next",
                          ),
                        ]))))));
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

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    final pickedDate = DateFormat('yyyy-MM-dd').format(args.value);

    setState(() {
      selectedDate = pickedDate;
    });

    print(args.value);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
