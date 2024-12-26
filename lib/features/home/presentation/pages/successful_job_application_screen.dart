import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessfulJobPostedPage extends StatelessWidget {
  const SuccessfulJobPostedPage({Key? key})
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
              SvgPicture.asset(ImageConstant.imgVectorPrimary),
              SizedBox(height: 23.v),
              Text(
                "Job posted successfully",
                style: CustomTextStyles.titleMediumPrimaryContainer18,
              ),
              SizedBox(height: 15.v),
              Spacer(
                flex: 56,
              ),
              CustomElevatedButton(
                text: "Back to Home",
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => JobSeekerNavBarPage()));
                  Navigator.pushNamed(context, AppRoutes.employerNavBarScreen);
                },
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
