import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/settings/domain/entities/activities_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActivitiesPage extends StatefulWidget {
  final List<ActivitiesEntity> activityEntity;
  const ActivitiesPage({Key? key, required this.activityEntity})
      : super(
          key: key,
        );

  @override
  ActivitiesPageState createState() => ActivitiesPageState();
}

class ActivitiesPageState extends State<ActivitiesPage>
    with AutomaticKeepAliveClientMixin<ActivitiesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 20.h,
        );
      },
      itemCount: widget.activityEntity.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.outlinePrimaryContainer1.copyWith(
            color: AppColors.kwhite,
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 48.v,
                      width: 53.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.fillPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: CustomImageView(
                        imagePath:
                            ImageConstant.imgDownloadRemovebgPreview26x39,
                        height: 26.v,
                        width: 39.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 4.v,
                        bottom: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 170,
                            child: Text(
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              widget.activityEntity[index].industry ?? '',
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 170,
                            child: Text(
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              widget.activityEntity[index].jobTitle ?? '',
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 90.h,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 19.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.fillPrimaryContainer1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Text(
                        widget.activityEntity[index].status == '0'
                            ? "Applied"
                            : widget.activityEntity[index].status == '1'
                                ? 'Screened'
                                : widget.activityEntity[index].status == '2'
                                    ? 'Rejected'
                                    : 'Accepted',
                        style: CustomTextStyles.titleSmallPrimaryContainer_1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(ImageConstant.whatsapp),
                        SizedBox(width: 15.v),
                        Text('Chat with us')
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Text(
                        DateFormat("MMM dd, yyyy").format(
                            widget.activityEntity[index].createdAt ??
                                DateTime.now()),
                        style: CustomTextStyles.bodyMediumGray700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
