import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserprofilegridItemWidget extends StatefulWidget {
  final String fullName;

  UserprofilegridItemWidget({required this.fullName});

  @override
  _UserprofilegridItemWidgetState createState() =>
      _UserprofilegridItemWidgetState();
}

class _UserprofilegridItemWidgetState extends State<UserprofilegridItemWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145.v,
      width: 180.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 28.v,
              ),
              //height: 145.v,
              width: 180.h,
              decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 12.v),
                  Text(
                    widget.fullName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: CustomTextStyles.titleMediumSecondaryContainer12,
                  ),
                  SizedBox(height: 7.v),
                ],
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 50),
              child: ClipOval(
                  child: SvgPicture.asset(
                "assets/images/user-profile-svgrepo-com (2).svg",
                height: 60.adaptSize,
                width: 60.adaptSize,
                alignment: Alignment.topCenter,
              ))),
        ],
      ),
    );
  }
}
