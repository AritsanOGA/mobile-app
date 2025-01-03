import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_icon_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore_for_file: must_be_immutable
class EmployerProfilePageScreen extends HookWidget {
  EmployerProfilePageScreen({Key? key}) : super(key: key);

  var image;
  @override
  Widget build(BuildContext context) {
    final fullNameEditTextController = useTextEditingController();
    final aboutTextController = useTextEditingController();
    final addressEditTextController = useTextEditingController();
    final companyTextController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Settings',
            ),
            body: SizedBox(
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
                                            radius: BorderRadius.circular(92.h),
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
                                        //  pickImage();
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
                                CustomTextFormField(
                                  title: 'Full Name',
                                  titleStyle:
                                      CustomTextStyles.titleMediumMedium18,
                                  hintText: 'Add a Job Description',
                                  controller: fullNameEditTextController,
                                  validator: FormValidation.stringValidation,
                                  isBorderNone: true,
                                ),
                                CustomTextFormField(
                                  title: 'Bio',
                                  titleStyle:
                                      CustomTextStyles.titleMediumMedium18,
                                  hintText: 'Add a Job Description',
                                  controller: aboutTextController,
                                  validator: FormValidation.stringValidation,
                                  isBorderNone: true,
                                ),
                                CustomTextFormField(
                                  title: 'Street Address',
                                  titleStyle:
                                      CustomTextStyles.titleMediumMedium18,
                                  hintText: 'Add a Job Description',
                                  controller: addressEditTextController,
                                  validator: FormValidation.stringValidation,
                                  isBorderNone: true,
                                ),
                                CustomTextFormField(
                                  title: 'Country',
                                  titleStyle:
                                      CustomTextStyles.titleMediumMedium18,
                                  hintText: 'Add a Job Description',
                                  controller: addressEditTextController,
                                  validator: FormValidation.stringValidation,
                                  isBorderNone: true,
                                ),
                                CustomTextFormField(
                                  title: 'City',
                                  titleStyle:
                                      CustomTextStyles.titleMediumMedium18,
                                  hintText: 'Add a Job Description',
                                  controller: addressEditTextController,
                                  validator: FormValidation.stringValidation,
                                  isBorderNone: true,
                                ),
                                CustomTextFormField(
                                  title: 'Company',
                                  titleStyle:
                                      CustomTextStyles.titleMediumMedium18,
                                  hintText: 'Add a Job Description',
                                  controller: addressEditTextController,
                                  validator: FormValidation.stringValidation,
                                  isBorderNone: true,
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                CustomElevatedButton(
                                  text: "Save",
                                  // margin: EdgeInsets.only(
                                  //     left: 3.h, right: 4.h),
                                  // buttonStyle: CustomButtonStyles
                                  //     .fillSecondaryContainerTL24,
                                  // buttonTextStyle: CustomTextStyles
                                  //     .titleLargeOnPrimaryContainerSemiBold,
                                  onPressed: () {},
                                ),
                                SizedBox(height: 25.v),
                                SizedBox(
                                    width: 130.h,
                                    child: Divider(
                                        color: theme
                                            .colorScheme.primaryContainer
                                            .withOpacity(1))),
                                SizedBox(height: 12.v)
                              ]))
                        ]))))));
  }
}
