import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatefulWidget {
  //final FeaturedCandidateModel featuredCandidateModel;
  final String fullName;
  final String phone;
  final String availability;
  final String city;

  const UserprofilelistItemWidget({
    Key? key,
    required this.fullName,
    required this.phone,
    required this.availability,
    required this.city,
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
      padding: EdgeInsets.only(left: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 10.v,
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
                  //             CachedNetworkImage(
                  //   imageUrl: imageURL,
                  //   fit: BoxFit.cover,
                  //   progressIndicatorBuilder: (context, url, downloadProgress) =>
                  //       const Center(),
                  //   imageBuilder: (context, imageProvider) => Container(
                  //     width: 180,
                  //     height: 220,
                  //     decoration: BoxDecoration(
                  //       border: Border.all(
                  //         width: 4,
                  //         color: iSentmage ? AppColors.kPrimaryColor : AppColors.plainWhite,
                  //       ),
                  //       borderRadius: BorderRadius.circular(16),
                  //       image: DecorationImage(
                  //         image: CachedNetworkImageProvider(imageURL),
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //   ),
                  //   errorWidget: (context, url, error) => const Icon(Icons.error),
                  // ),
                  Container(
                      child: ClipOval(
                          child: SvgPicture.asset(
                    "assets/images/user-profile-svgrepo-com (2).svg",
                    height: 47.adaptSize,
                    width: 47.adaptSize,
                    alignment: Alignment.topCenter,
                  ))),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 180.h,
                        child: Text(
                          softWrap: false,
                          widget.fullName,
                          style: theme.textTheme.titleMedium!.copyWith(
                            color: theme.colorScheme.onPrimary,
                            overflow: TextOverflow.ellipsis,
                            fontSize: 17.fSize,
                          ),
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        widget.phone,
                        style: CustomTextStyles.labelLargePrimaryContainer_1,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 11.v),
              Row(
                children: [
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        color: AppColors.kblack,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: 11.v),
                  Text(widget.availability,
                      style: CustomTextStyles.labelLargePrimaryContainer_2)
                ],
              ),
              SizedBox(height: 5.v),
              Row(
                children: [
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                        color: AppColors.kblack,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: 11.v),
                  Text(widget.city,
                      style: CustomTextStyles.labelLargePrimaryContainer_2)
                ],
              ),
              SizedBox(height: 23.v),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.candidatesProfileAcceptPageScreen);
                  },
                  child: Container(
                      height: 40.v,
                      width: 170.h,
                      // margin: margin,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: theme.primaryColor),
                      // margin: EdgeInsets.symmetric(horizontal: 3.h),
                      child: Center(
                        child: Text(
                          'View',
                          style: CustomTextStyles.titleMediumGray50_1,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
