import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPageSixScreen extends HookWidget {
  JSCreateAccountPageSixScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController enterRoleController = TextEditingController();

  TextEditingController mmddyyController = TextEditingController();

  TextEditingController inputHereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final guaranterNameController = useTextEditingController();
    final guaranterEmailController = useTextEditingController();
    final guaranterAddressController = useTextEditingController();

    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
            body: SingleChildScrollView(
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.v,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Add Guarantor",
                                  style: CustomTextStyles
                                      .titleMediumOnPrimaryMedium)),
                          SizedBox(height: 30.v),
                          CustomTextFormField(
                              title: 'Name',
                              controller: guaranterNameController,
                              hintText: "Enter Guarantor’s Name",
                              hintStyle: theme.textTheme.titleSmall!),
                          SizedBox(height: 30.v),
                          CustomTextFormField(
                              title: 'Email',
                              controller: guaranterEmailController,
                              hintText: "Enter Guarantor’s Email",
                              hintStyle: theme.textTheme.titleSmall!),
                          SizedBox(height: 30.v),
                          CustomTextFormField(
                              title: 'Residential Address',
                              controller: guaranterAddressController,
                              hintText: "Enter Residential Address",
                              hintStyle: theme.textTheme.titleSmall!),
                          SizedBox(height: 40.v),
                          CustomElevatedButton(
                            text: "Submit",
                            onPressed: () {},
                          ),
                        ])))));
  }
}
