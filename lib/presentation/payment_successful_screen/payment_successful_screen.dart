import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/widgets/custom_elevated_button.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  const PaymentSuccessfulScreen({Key? key})
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
                flex: 55,
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
              SizedBox(height: 26.v),
              Text(
                "Payment Successful",
                style: CustomTextStyles.titleMediumPrimaryContainer17,
              ),
              Spacer(
                flex: 44,
              ),
              CustomElevatedButton(
                text: "Continue",
              ),
              SizedBox(height: 68.v),
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
