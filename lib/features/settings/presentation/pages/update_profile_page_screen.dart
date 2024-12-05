import 'dart:io';

import 'package:artisan_oga/core/services/employers.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/app_bar/appbar_subtitle.dart';
import 'package:artisan_oga/shared/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_icon_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';

// ignore_for_file: must_be_immutable
class EmployerProfilePageScreen extends StatefulWidget {
  EmployerProfilePageScreen({Key? key}) : super(key: key);

  @override
  _EmployerProfilePageScreenState createState() =>
      _EmployerProfilePageScreenState();
}

class _EmployerProfilePageScreenState extends State<EmployerProfilePageScreen> {
  TextEditingController fullNameEditTextController = TextEditingController();

  TextEditingController aboutTextController = TextEditingController();

  TextEditingController addressEditTextController = TextEditingController();

  TextEditingController companyTextController = TextEditingController();

  TextEditingController cityEditTextController = TextEditingController();
  TextEditingController countryEditTextController = TextEditingController();

  var employer_info = Hive.box("artisan").get("employer_user_data");
  var image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: FutureBuilder<dynamic>(
          future:
              Employers().getProfile(employer_info["data"]["id"].toString()),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasData) {
              final data = snapshot.data!;

              return SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Column(children: [
                            SizedBox(height: 16.v),
                            SizedBox(
                                height: 184.adaptSize,
                                width: 184.adaptSize,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      image == null
                                          ? CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse40,
                                              height: 184.adaptSize,
                                              width: 184.adaptSize,
                                              radius:
                                                  BorderRadius.circular(92.h),
                                              alignment: Alignment.center)
                                          : Container(
                                              width: 200,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: FileImage(image!),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                      GestureDetector(
                                        onTap: (() {
                                          pickImage();
                                        }),
                                        child: CustomIconButton(
                                            height: 57.adaptSize,
                                            width: 57.adaptSize,
                                            padding: EdgeInsets.all(7.h),
                                            decoration: IconButtonStyleHelper
                                                .fillPrimaryTL28,
                                            alignment: Alignment.bottomRight,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                      )
                                    ])),
                            SizedBox(height: 43.v),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 25.h),
                                child: Column(children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Full Name",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 16.v),
                                  _buildFullNameEditText(
                                      context, data["full_name"].toString()),
                                  SizedBox(height: 28.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Bio",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 15.v),
                                  _buildAboutEditText(
                                      context, data["about"].toString()),
                                  SizedBox(height: 21.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Street Address",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 15.v),
                                  _buildAddressEditText(
                                      context, data["street"].toString()),
                                  SizedBox(height: 28.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("City",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 15.v),
                                  _buildCityEditText(
                                      context, data["city"].toString()),
                                  SizedBox(height: 23.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Country",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 15.v),
                                  _buildCountryEditText(
                                      context, data["country"].toString()),
                                  SizedBox(height: 29.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Company",
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 15.v),
                                  _buildCompanyEditText(
                                      context, data["company_name"].toString()),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  _buildSaveButton(context),
                                  SizedBox(height: 25.v),
                                  SizedBox(
                                      width: 130.h,
                                      child: Divider(
                                          color: theme
                                              .colorScheme.primaryContainer
                                              .withOpacity(1))),
                                  SizedBox(height: 12.v)
                                ]))
                          ]))));
            } else {
              return Center(
                child: Text("Could not load user profile. Please try again"),
              );
            }
          }),
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: AppbarSubtitle(text: "Edit Profile"));
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context, String fullName) {
    return CustomTextFormField(
        title: 'Password',
        controller: fullNameEditTextController,
        hintText: fullName,
        hintStyle: CustomTextStyles.bodyMediumGray700,
        borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer);
  }

  /// Section Widget
  Widget _buildAboutEditText(BuildContext context, String about) {
    return CustomTextFormField(
        title: 'Password',
        controller: aboutTextController,
        hintText: about,
        hintStyle: CustomTextStyles.bodyMediumGray700,
        textInputType: TextInputType.emailAddress,
        borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer);
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context, String streetAddress) {
    return CustomTextFormField(
        title: 'Password',
        controller: addressEditTextController,
        hintText: streetAddress == "null" ? "--" : streetAddress,
        hintStyle: CustomTextStyles.bodyMediumGray700,
        borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer);
  }

  /// Section Widget
  Widget _buildCompanyEditText(BuildContext context, String company) {
    return CustomTextFormField(
        title: 'Password',
        controller: companyTextController,
        hintText: company,
        hintStyle: CustomTextStyles.bodyMediumGray700,
        textInputType: TextInputType.phone,
        borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer);
  }

  /// Section Widget
  Widget _buildCountryEditText(BuildContext context, String country) {
    return CustomTextFormField(
        title: 'Password',
        controller: countryEditTextController,
        hintText: country,
        hintStyle: CustomTextStyles.bodyMediumGray700,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer);
  }

  /// Section Widget
  Widget _buildCityEditText(BuildContext context, String city) {
    return CustomTextFormField(
        title: 'Password',
        controller: cityEditTextController,
        hintText: city,
        hintStyle: CustomTextStyles.bodyMediumGray700,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.underLinePrimaryContainer);
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Save",
      // buttonTextStyle: CustomTextStyles.titleLargeOnPrimaryContainerSemiBold,
      onPressed: () {},
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
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
}
