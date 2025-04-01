import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PaymentPageTwoDialog extends StatelessWidget {
  const PaymentPageTwoDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.h,
      padding: EdgeInsets.symmetric(
        horizontal: 45.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder33,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Choose Payment Method",
            style: CustomTextStyles.titleMediumPrimaryContainer18,
          ),
          SizedBox(height: 25.v),
          CustomElevatedButton(
            // height: 44.v,
            text: "Pay with Card", onPressed: () {},
            // margin: EdgeInsets.symmetric(horizontal: 24.h),
            // buttonStyle: CustomButtonStyles.fillPrimaryTL8,
            // buttonTextStyle: CustomTextStyles.titleMediumGray50Bold17,
          ),
          SizedBox(height: 18.v),
          CustomElevatedButton(
            // height: 44.v,
            // width: 145.h,
            text: "Transfer",
            // buttonStyle: CustomButtonStyles.fillPrimaryTL8,
            // buttonTextStyle: CustomTextStyles.titleMediumGray50Bold17,
            onPressed: () {},
          ),
          SizedBox(height: 33.v),
        ],
      ),
    );
  }
}
