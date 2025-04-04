import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserprofilegridItemWidget extends StatefulWidget {
  final GetAssignedApplicantsEntity getAssignedApplicantsEntity;

  UserprofilegridItemWidget({required this.getAssignedApplicantsEntity});

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
                    widget.getAssignedApplicantsEntity.users.fullName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: CustomTextStyles.titleMediumSecondaryContainer12,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    widget.getAssignedApplicantsEntity.users.availability,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: CustomTextStyles.titleMediumSecondaryContainer12,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            child: widget.getAssignedApplicantsEntity.users.image != ''
                ? CachedNetworkImage(
                    imageUrl: widget.getAssignedApplicantsEntity.users.image,
                    fit: BoxFit.cover,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => const Center(),
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
                        border: Border.all(width: 2, color: AppColors.kblack)),
                    child: Icon(
                      color: Colors.black,
                      Icons.person,
                      size: 40,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
