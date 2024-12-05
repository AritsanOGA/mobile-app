import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessfulJobApplicationPage extends StatelessWidget {
  const SuccessfulJobApplicationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            SvgPicture.asset(ImageConstant.imgVectorPrimary),
            SizedBox(height: 20.v),
            Text(
              "Application Sent",
              style: CustomTextStyles.titleLargePrimaryBold,
            ),
            SizedBox(height: 20.v),
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
            Spacer(),
            CustomElevatedButton(
                width: 400.h,
                text: 'Back to Home',
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.jobSeekerNavBarScreen);
                }),
            SizedBox(height: 60.v),
          ],
        ),
      ),
    );
  }
}