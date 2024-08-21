import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';

class SuccessfulPageScreen extends StatelessWidget {
  const SuccessfulPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Column(
            children: [
              Spacer(
                flex: 46,
              ),
              Container(
                height: 110.adaptSize,
                width: 110.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 28.v,
                ),
                decoration: AppDecoration.outlinePrimary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder55,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary,
                  height: 44.v,
                  width: 64.h,
                  alignment: Alignment.centerLeft,
                ),
              ),
              SizedBox(height: 25.v),
              Text(
                "Account Created",
                style: CustomTextStyles.titleMediumPrimaryContainer17,
              ),
              Spacer(
                flex: 53,
              ),
              SizedBox(
                width: 130.h,
                child: Divider(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
