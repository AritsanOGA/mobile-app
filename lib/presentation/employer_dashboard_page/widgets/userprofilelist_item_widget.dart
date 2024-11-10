import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatefulWidget {
  final String fullName;
  final String phone;

  const UserprofilelistItemWidget({
    Key? key,
    required this.fullName,
    required this.phone,
  }) : super(key: key);

  @override
  _UserprofilelistItemWidgetState createState() =>
      _UserprofilelistItemWidgetState();
}

class _UserprofilelistItemWidgetState extends State<UserprofilelistItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 20.v,
          ),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6.v),
              Row(
                children: [
                  Container(
                      child: ClipOval(
                          child: SvgPicture.asset(
                    "assets/images/user-profile-svgrepo-com (2).svg",
                    height: 47.adaptSize,
                    width: 47.adaptSize,
                    alignment: Alignment.topCenter,
                  ))),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 3.v,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.fullName,
                          style: CustomTextStyles.titleMediumBlack900,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          widget.phone,
                          style: CustomTextStyles.labelLargePrimaryContainer_1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11.v),
              SizedBox(height: 23.v),
              CustomElevatedButton(
          
                text: "View", onPressed: () {  },
                // buttonStyle: CustomButtonStyles.fillSecondaryContainer,
                // buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
                // alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
