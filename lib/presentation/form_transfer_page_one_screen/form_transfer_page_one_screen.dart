import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/widgets/app_bar/appbar_leading_image.dart';
import 'package:artisan_oga/widgets/app_bar/appbar_subtitle.dart';
import 'package:artisan_oga/widgets/app_bar/custom_app_bar.dart';
import 'package:artisan_oga/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FormTransferPageOneScreen extends StatelessWidget {
  FormTransferPageOneScreen({Key? key}) : super(key: key);

  TextEditingController selectBankvalueController = TextEditingController();

  TextEditingController typeofPaymentController = TextEditingController();

  TextEditingController selectPackagevalueController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController inputTellerController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.h, vertical: 5.v),
                            child: Column(children: [
                              Text("Please complete the form after payment",
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 23.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Bank Paid Into",
                                      style: CustomTextStyles
                                          .bodyMediumPrimaryContainer_1)),
                              SizedBox(height: 10.v),
                              _buildSelectBankvalue(context),
                              SizedBox(height: 19.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Type of Payment",
                                      style: CustomTextStyles
                                          .bodyMediumPrimaryContainer_1)),
                              SizedBox(height: 8.v),
                              _buildTypeofPayment(context),
                              SizedBox(height: 19.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Select Package",
                                      style: CustomTextStyles
                                          .bodyMediumPrimaryContainer_1)),
                              SizedBox(height: 8.v),
                              _buildSelectPackagevalue(context),
                              SizedBox(height: 18.v),
                              _buildDate1(context),
                              SizedBox(height: 17.v),
                              _buildName1(context),
                              SizedBox(height: 19.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Teller (optional)",
                                      style: CustomTextStyles
                                          .bodyMediumPrimaryContainer_1)),
                              SizedBox(height: 8.v),
                              _buildInputTeller(context),
                              SizedBox(height: 47.v),
                              _buildSubmit(context),
                              SizedBox(height: 89.v),
                              SizedBox(
                                  width: 130.h,
                                  child: Divider(
                                      color: theme.colorScheme.primaryContainer
                                          .withOpacity(1))),
                              SizedBox(height: 6.v)
                            ])))))));
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
        title: AppbarSubtitle(text: "Transfer Method"));
  }

  /// Section Widget
  Widget _buildSelectBankvalue(BuildContext context) {
    return CustomTextFormField(
        controller: selectBankvalueController,
        hintText: "Select Bank",
        hintStyle: CustomTextStyles.bodyMediumGray700);
  }

  /// Section Widget
  Widget _buildTypeofPayment(BuildContext context) {
    return CustomTextFormField(
        controller: typeofPaymentController,
        hintText: "Type of Payment",
        hintStyle: CustomTextStyles.bodyMediumGray700);
  }

  /// Section Widget
  Widget _buildSelectPackagevalue(BuildContext context) {
    return CustomTextFormField(
        controller: selectPackagevalueController,
        hintText: "Select Package",
        hintStyle: CustomTextStyles.bodyMediumGray700);
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("No of Candidate (s)",
                  style: CustomTextStyles.bodyMediumPrimaryContainer_1),
              SizedBox(height: 9.v),
              CustomTextFormField(
                  width: 180.h,
                  controller: dateController,
                  hintText: "e.g 10 candidates",
                  hintStyle: CustomTextStyles.bodyMediumGray700)
            ])));
  }

  /// Section Widget
  Widget _buildAmount(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Amount",
                  style: CustomTextStyles.bodyMediumPrimaryContainer_1),
              SizedBox(height: 9.v),
              CustomTextFormField(
                  width: 180.h,
                  controller: amountController,
                  hintText: "e.g NGN 25,000.00",
                  hintStyle: CustomTextStyles.bodyMediumGray700)
            ])));
  }

  /// Section Widget
  Widget _buildDate1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildDate(context), _buildAmount(context)]);
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(top: 1.v, right: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Depositor’s Name",
                  style: CustomTextStyles.bodyMediumPrimaryContainer_1),
              SizedBox(height: 8.v),
              CustomTextFormField(
                  width: 180.h,
                  controller: nameController,
                  hintText: "Enter depositor’s name",
                  hintStyle: CustomTextStyles.bodyMediumGray700,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8.h, vertical: 15.v))
            ])));
  }

  /// Section Widget
  Widget _buildLocation(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Location",
                  style: CustomTextStyles.bodyMediumPrimaryContainer_1),
              SizedBox(height: 10.v),
              CustomTextFormField(
                  width: 180.h,
                  controller: locationController,
                  hintText: "Enter your Location",
                  hintStyle: CustomTextStyles.bodyMediumGray700)
            ])));
  }

  /// Section Widget
  Widget _buildName1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildName(context), _buildLocation(context)]);
  }

  /// Section Widget
  Widget _buildInputTeller(BuildContext context) {
    return CustomTextFormField(
        controller: inputTellerController,
        hintText: "Input Teller",
        hintStyle: CustomTextStyles.bodyMediumGray700,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(text: "Submit");
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
