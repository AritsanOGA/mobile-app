import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessScreen extends StatelessWidget {
  final String message;
  final VoidCallback onTap;
  const SuccessScreen({super.key, required this.message, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            SvgPicture.asset('assets/svgs/success_check.svg'),
            SizedBox(height: 20.v),
            Text(
              message,
              style: CustomTextStyles.titleMediumPrimaryContainer18,
            ),
            SizedBox(height: 20.v),
            CustomElevatedButton(
                width: 400.h, text: 'Continue', onPressed: onTap
                // () {
                //   Navigator.pushNamed(
                //       context, AppRoutes.employerLoginPageScreen);
                // }
                ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
