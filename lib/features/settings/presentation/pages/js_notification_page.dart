import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class JsNotificationPage extends StatefulWidget {
  const JsNotificationPage({super.key});

  @override
  State<JsNotificationPage> createState() => _JsNotificationPageState();
}

class _JsNotificationPageState extends State<JsNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      appBar: CustomAppBar(
        title: 'Notification',
      ),
      body: BlocBuilder<SettingBloc, SettingState>(
        bloc: context.read<SettingBloc>()
          ..add(SettingEvent.getJobSeekerNotification()),
        builder: (context, state) {
          if (state.jobSeekerNotificationState ==
              JobSeekerNotificationState.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.jobSeekerNotificationState ==
              JobSeekerNotificationState.failure) {
            return Center(child: Text('Error: '));
          }

          if (state.notification.isEmpty) {
            return Center(child: Text('No items found.'));
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(state.notification.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CachedNetworkImage(
                              imageUrl: 'https://picsum.photos/250?image=9',
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      const Center(),
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        'https://picsum.photos/250?image=9'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    maxLines: 2,
                                    state.notification[index].body,
                                    style:
                                        theme.textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.kblack,
                                    ),
                                  ),
                                ),
                                Text(
                                  '5 hours ago',
                                  style: theme.textTheme.titleMedium?.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.notificationJobDetailsPage,
                              arguments: state.notification[index].jobIdentity,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 40.h,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: theme.primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                'View Job',
                                style: theme.textTheme.titleMedium?.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.kwhite),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
