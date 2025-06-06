import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatefulWidget {
  //final FeaturedCandidateModel featuredCandidateModel;
  final String fullName;
  final String phone;
  final String availability;
  final String city;
  final String identityId;
  final String image;

  const UserprofilelistItemWidget({
    Key? key,
    required this.fullName,
    required this.phone,
    required this.availability,
    required this.city,
    required this.identityId,
    required this.image,
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
                  widget.image != ''
                      ? CachedNetworkImage(
                          imageUrl: widget.image,
                          fit: BoxFit.cover,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  const Center(),
                          imageBuilder: (context, imageProvider) => Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        )
                      : Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: AppColors.kblack)),
                          child: Icon(
                            color: Colors.black,
                            Icons.person,
                            size: 30,
                          ),
                        ),
                  SizedBox(width: 7.v),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 170.h,
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
                        context, AppRoutes.candidatesProfilePage,
                        arguments: widget.identityId);
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
