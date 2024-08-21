import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 59.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 58.v,
                width: 59.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(right: 7.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 10.v,
                        ),
                        decoration: AppDecoration
                            .gradientPrimaryToPrimaryContainer
                            .copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder26,
                        ),
                        child: Text(
                          "TY",
                          style: CustomTextStyles.headlineSmallGray50,
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      decoration: IconButtonStyleHelper.fillGray,
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgPlus,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Post Job",
                style: CustomTextStyles.labelLargePrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
