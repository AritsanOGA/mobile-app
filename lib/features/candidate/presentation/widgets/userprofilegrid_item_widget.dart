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
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: CachedNetworkImage(
              imageUrl:
                  'https://storage.googleapis.com/kunpexchange-6a590.appspot.com/cities_post/600c520b-321f-4155-a9f7-6a06cb137466download (4).jpeg',

              //  state.jobSeekerJobList[index].profileImage,
              fit: BoxFit.cover,

              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  const Center(),
              imageBuilder: (context, imageProvider) => Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }
}
