import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/home/presentation/widgets/waitering_item_widget.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/theme/custom_text_style.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JSProfilePage1 extends StatelessWidget {
  const JSProfilePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      appBar: CustomAppBar(
        title: '',
      ),
      body: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          if (state.getJobSeekerProfileState ==
              GetJobSeekerProfileState.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.getJobSeekerProfileState ==
              GetJobSeekerProfileState.failure) {
            return Center(child: Text('Error: '));
          }
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 30,
                // ),
                Text("Skills",
                    style: CustomTextStyles.titleSmallPrimaryContainer),
                SizedBox(height: 10.v),
                Divider(
                  height: 2,
                ),
                SizedBox(height: 10.v),
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
                SizedBox(height: 20.v),
                Text("Skill Endorsement",
                    style: CustomTextStyles.titleSmallPrimaryContainer),
                SizedBox(height: 10.v),
                Divider(
                  height: 2,
                ),
                SizedBox(height: 10.v),
                ...List.generate(
                    state.getJobSeekerResponseEntity?.artisanAssignedSkills
                            .length ??
                        0, (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          state.getJobSeekerResponseEntity
                                  ?.artisanAssignedSkills[index].skill ??
                              '',
                          style: CustomTextStyles.bodyMediumPrimaryContainer),
                      SizedBox(height: 1.v),
                      Container(
                          height: 14.v,
                          width: 380.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray700.withOpacity(0.18),
                              borderRadius: BorderRadius.circular(2.h))),
                      SizedBox(height: 7.v),
                    ],
                  );
                }),
                SizedBox(height: 20.v),
                Text("Awards & Certificates",
                    style: CustomTextStyles.titleSmallPrimaryContainer),
                SizedBox(height: 10.v),
                Divider(
                  height: 2,
                ),
                SizedBox(height: 10.v),
                Text('Best Staff of the month - Mar, 2005',
                    style: CustomTextStyles.titleSmallPrimaryContainer),
                SizedBox(height: 20.v),
                Text("Employer Feedback",
                    style: CustomTextStyles.titleSmallPrimaryContainer),
                SizedBox(height: 10.v),
                Divider(
                  height: 2,
                ),
                SizedBox(height: 10.v),
                ...List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: CachedNetworkImage(
                            imageUrl: 'https://picsum.photos/250?image=9',
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    const Center(),
                            imageBuilder: (context, imageProvider) => Container(
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
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lady B Fashion'),
                            Text('He is a good Fashion Designer'),
                          ],
                        )
                      ],
                    ),
                  );
                }),
                SizedBox(height: 20.v),
              ],
            ),
          );
        },
      ),
    );
  }
}
