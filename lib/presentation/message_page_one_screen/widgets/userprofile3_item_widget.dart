import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 198.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1854x54,
                height: 54.adaptSize,
                width: 54.adaptSize,
                radius: BorderRadius.circular(
                  27.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kingsley Williams",
                      style: CustomTextStyles.titleSmallOnPrimarySemiBold,
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMdiCheckboxMa,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "Hi",
                            style: CustomTextStyles.bodyMediumGray70013,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 9.v,
            bottom: 29.v,
          ),
          child: Text(
            "Mon",
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
