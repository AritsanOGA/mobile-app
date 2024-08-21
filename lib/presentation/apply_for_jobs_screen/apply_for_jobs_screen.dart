import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/widgets/custom_elevated_button.dart';

class ApplyForJobsScreen extends StatelessWidget {
  const ApplyForJobsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              Spacer(
                flex: 43,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorPrimary,
                height: 132.adaptSize,
                width: 132.adaptSize,
              ),
              SizedBox(height: 23.v),
              Text(
                "Application Sent",
                style: CustomTextStyles.titleLargePrimaryBold,
              ),
              SizedBox(height: 15.v),
              Container(
                width: 347.h,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                child: Text(
                  "You will be notified once the employer checks your application.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Spacer(
                flex: 56,
              ),
              CustomElevatedButton(
                text: "Back to Home",
                buttonTextStyle: CustomTextStyles.titleMediumGray5001,
              ),
              SizedBox(height: 34.v),
              SizedBox(
                width: 130.h,
                child: Divider(
                  color: theme.colorScheme.primaryContainer.withOpacity(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
