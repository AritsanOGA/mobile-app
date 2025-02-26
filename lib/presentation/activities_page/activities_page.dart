import 'package:artisan_oga/core/app_export.dart';
import 'package:flutter/material.dart';

import 'widgets/userprofile2_item_widget.dart';

// ignore_for_file: must_be_immutable
class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key})
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
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 27.v),
              _buildUserProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 9.0.v),
            child: SizedBox(
              width: 130.h,
              child: Divider(
                height: 6.v,
                thickness: 6.v,
                color: theme.colorScheme.primaryContainer.withOpacity(1),
              ),
            ),
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofile2ItemWidget();
        },
      ),
    );
  }
}
