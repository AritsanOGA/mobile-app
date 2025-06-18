import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/presentation/screens/employer_login_page_screen.dart';

class LoginOptionsPageScreen extends StatelessWidget {
  const LoginOptionsPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgEmployerLogin,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 12.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 32.v),
                // CustomImageView(
                //   imagePath: ImageConstant.imgCba516f14b444,
                //   height: 79.v,
                //   width: 242.h,
                // ),
                Spacer(),
                CustomElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmployerLoginPageScreen()),
                    );
                  }),

                  text: "Login as an Employer",
                  // buttonStyle: CustomButtonStyles.outlineGray,
                  // buttonTextStyle:
                  //     CustomTextStyles.titleLargeOnPrimaryContainer,
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  onPressed: (() {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => JSLoginPageScreen()),
                    // );
                  }),
                  text: "Login as a job seeker",
                ),
                SizedBox(height: 63.v),
                SizedBox(
                  width: 130.h,
                  child: Divider(
                    color: appTheme.gray50,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
