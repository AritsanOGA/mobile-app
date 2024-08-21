import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';

// ignore: must_be_immutable
class UserlistItemWidget extends StatelessWidget {
  const UserlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse844x44,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          SizedBox(height: 21.v),
          Text(
            "Kingsley",
            style: CustomTextStyles.labelLargePrimaryContainer,
          ),
        ],
      ),
    );
  }
}
