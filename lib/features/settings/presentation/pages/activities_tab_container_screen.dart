import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/features/settings/presentation/widgets/activities_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class ActivitiesTabContainerScreen extends HookWidget {
  const ActivitiesTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabIndex = useState(
      0,
    );
    useEffect(() {
      context.read<SettingBloc>().add(SettingEvent.getActivities());
      return null;
    }, []);

    return Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          title: 'Activities',
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: SizedBox(
              width: double.maxFinite,
              child: Column(children: [
                SizedBox(height: 13.v),
                _buildEightyFour(context),
                SizedBox(height: 21.v),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (_, __) => SizedBox(
                            width: 20,
                          ),
                          itemCount: 5,
                          itemBuilder: (context, index) => GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              context
                                  .read<SettingBloc>()
                                  .add(SettingEvent.filteredActivities(index));
                              tabIndex.value = index;
                            },
                            child: Container(
                              width: 100,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              alignment: Alignment.centerLeft,
                              decoration: tabIndex.value == index
                                  ? BoxDecoration(
                                      color: theme.primaryColor,
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    )
                                  : BoxDecoration(
                                      border:
                                          Border.all(color: AppColors.kblack),
                                      color: AppColors.kwhite,
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    ),
                              child: Center(
                                child: Text(
                                  [
                                    'All Status',
                                    'Applied',
                                    'Screened',
                                    'Rejected',
                                    'Accepted',
                                  ].elementAt(index),
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: tabIndex.value == index
                                        ? AppColors.kwhite
                                        : AppColors.kblack,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      BlocListener<SettingBloc, SettingState>(
                        listener: (context, state) {
                          context.read<SettingBloc>().add(
                              SettingEvent.filteredActivities(
                                  state.selectedTabIndex));
                        },
                        child: BlocBuilder<SettingBloc, SettingState>(
                          builder: (context, state) {
                            if (state.activitiesState ==
                                ActvitiesState.loading) {
                              return Center(child: CircularProgressIndicator());
                            }

                            if (state.activitiesState ==
                                ActvitiesState.failure) {
                              return Center(
                                  child: Text('Error loading activities'));
                            }

                            if (state.filteredActivity.isEmpty) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Text(
                                    'No activities found.',
                                    style: theme.textTheme.displaySmall
                                        ?.copyWith(fontSize: 17),
                                  ),
                                ],
                              );
                            }

                            return Expanded(
                                child: tabIndex.value == 0
                                    ? ActivitiesPage(
                                        activityEntity: state.filteredActivity,
                                      )
                                    : tabIndex.value == 1
                                        ? ActivitiesPage(
                                            activityEntity:
                                                state.filteredActivity,
                                          )
                                        : tabIndex.value == 2
                                            ? ActivitiesPage(
                                                activityEntity:
                                                    state.filteredActivity,
                                              )
                                            : tabIndex.value == 3
                                                ? ActivitiesPage(
                                                    activityEntity:
                                                        state.filteredActivity,
                                                  )
                                                : ActivitiesPage(
                                                    activityEntity:
                                                        state.filteredActivity,
                                                  ));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ])),
        ));
  }

  Widget _buildEightyFour(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Container(
            height: 197.v,
            // width: 380.h,
            decoration: AppDecoration.orange
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Stack(children: [
              Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: 199.h,
                          margin: EdgeInsets.only(left: 20.h, top: 30.v),
                          child: Text(
                              "Get tips for getting your Dream Job to work in Canada",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.titleMediumGray50Bold17))),
                ],
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                  width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColors.kwhite,
                      borderRadius: BorderRadius.circular(10)
                      // border: Border.all(color: AppColors.)
                      ),
                  child: Text(
                    'Apply now',
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              CustomImageView(
                  imagePath: ImageConstant.img9ebdc45a3e7a600,
                  height: 197.v,
                  width: 296.h,
                  radius: BorderRadius.circular(16.h),
                  alignment: Alignment.centerRight)
            ])));
  }
}
