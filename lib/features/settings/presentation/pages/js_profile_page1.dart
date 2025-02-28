import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/home/presentation/widgets/waitering_item_widget.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/theme/custom_text_style.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JSProfilePage1 extends StatelessWidget {
  const JSProfilePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SettingBloc, SettingState>(
        bloc: context.read<SettingBloc>()
          ..add(SettingEvent.getJobSeekerProfile()),
        builder: (context, state) {
          if (state.getJobSeekerProfileState ==
              GetJobSeekerProfileState.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.getJobSeekerProfileState ==
              GetJobSeekerProfileState.failure) {
            return Center(child: Text('Error: '));
          }
          return Column(
            children: [
              Text("Skills",
                  style: CustomTextStyles.titleSmallPrimaryContainer),
              SizedBox(height: 9.v),
              Wrap(
                  runSpacing: 6.v,
                  spacing: 6.h,
                  children: List<Widget>.generate(
                      state.getJobSeekerResponseEntity?.artisanAssignedSkills
                              .length ??
                          0,
                      (index) => WaiteringItemWidget(
                          skill: state.getJobSeekerResponseEntity
                                  ?.artisanAssignedSkills[index].skill ??
                              ''))),
              SizedBox(height: 17.v),


                                      Text("Skill Endorsement",
                                          style: CustomTextStyles
                                              .titleSmallPrimaryContainer),
                                      SizedBox(height: 10.v),
                                      ...List.generate(
                                          state
                                                  .getJobSeekerResponseEntity
                                                  ?.artisanAssignedSkills
                                                  .length ??
                                              0, (index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                state
                                                        .getJobSeekerResponseEntity
                                                        ?.artisanAssignedSkills[
                                                            index]
                                                        .skill ??
                                                    '',
                                                style: CustomTextStyles
                                                    .bodyMediumPrimaryContainer),
                                            SizedBox(height: 1.v),
                                            Container(
                                                height: 14.v,
                                                width: 380.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray700
                                                        .withOpacity(0.18),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.h))),
                                            SizedBox(height: 7.v),
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
