import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AcceptRejectPageModalBoxDialog extends StatelessWidget {
  AcceptRejectPageModalBoxDialog({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Kindly Endorse this Applicant",
              style: CustomTextStyles.titleMediumPrimaryContainer18,
            ),
          ),
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Rate this Applicant Skills from 1-10",
              style: CustomTextStyles.bodyMediumGray700,
            ),
          ),
          SizedBox(height: 37.v),
          Text(
            "Technical Skills",
            style: CustomTextStyles.titleMediumPrimaryContainerMedium_1,
          ),
          SizedBox(height: 12.v),
          // CustomDropDown(
          //   icon: Container(
          //     margin: EdgeInsets.fromLTRB(30.h, 16.v, 14.h, 16.v),
          //     child: CustomImageView(
          //       imagePath: ImageConstant.imgCheckmarkGray700,
          //       height: 16.adaptSize,
          //       width: 16.adaptSize,
          //     ),
          //   ),
          //   hintText: "10",
          //   hintStyle: CustomTextStyles.bodyMediumGray700,
          //   items: dropdownItemList,
          //   onChanged: (value) {},
          // ),
          SizedBox(height: 12.v),
          Text(
            "Communication Skills",
            style: CustomTextStyles.titleMediumPrimaryContainerMedium_1,
          ),
          SizedBox(height: 12.v),
          // CustomDropDown(
          //   icon: Container(
          //     margin: EdgeInsets.fromLTRB(30.h, 16.v, 14.h, 16.v),
          //     child: CustomImageView(
          //       imagePath: ImageConstant.imgCheckmarkGray700,
          //       height: 16.adaptSize,
          //       width: 16.adaptSize,
          //     ),
          //   ),
          //   hintText: "7",
          //   hintStyle: CustomTextStyles.bodyMediumGray700,
          //   items: dropdownItemList1,
          //   onChanged: (value) {},
          // ),
          SizedBox(height: 13.v),
          Text(
            "Leadership Abilities",
            style: CustomTextStyles.titleMediumPrimaryContainerMedium_1,
          ),
          SizedBox(height: 11.v),
          // CustomDropDown(
          //   icon: Container(
          //     margin: EdgeInsets.fromLTRB(30.h, 16.v, 14.h, 16.v),
          //     child: CustomImageView(
          //       imagePath: ImageConstant.imgCheckmarkGray700,
          //       height: 16.adaptSize,
          //       width: 16.adaptSize,
          //     ),
          //   ),
          //   hintText: "5",
          //   hintStyle: CustomTextStyles.bodyMediumGray700,
          //   items: dropdownItemList2,
          //   onChanged: (value) {},
          // ),
          SizedBox(height: 31.v),
          CustomElevatedButton(
            text: "Submit",
            onPressed: () {},
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
