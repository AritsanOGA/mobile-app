import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.fillBlue,
            child: CustomImageView(
              imagePath: ImageConstant.imgEosIconsJob,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Product Designer Intern",
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 3.v),
                Text(
                  "On-SIte, Full-Time",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgStreamlineInte,
            height: 14.adaptSize,
            width: 14.adaptSize,
            margin: EdgeInsets.only(
              top: 28.v,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }
}
