import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
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
          return Column(
            children: [
              ...List.generate(state.notification.length, (index) {
                return Row(
                  children: [

                    
                    Text(state.notification[index].body),
                  ],
                );
              })
            ],
          );
        },
      ),
    );
  }
}
