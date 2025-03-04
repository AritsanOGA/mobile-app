import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/app_formatter.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class NotificationJobDetailsScreen extends StatelessWidget {
  final String jobId;
  const NotificationJobDetailsScreen({super.key, required this.jobId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      appBar: CustomAppBar(
        title: '',
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: context.read<AuthBloc>()..add(AuthEvent.searchJobDetails(jobId)),
        builder: (context, state) {
          if (state.searchJobDetailState == SearchJobDetailState.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.searchJobDetailState == SearchJobDetailState.failure) {
            return Center(child: Text('Error: '));
          }
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CachedNetworkImage(
                      imageUrl: 'https://picsum.photos/250?image=9',
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => const Center(),
                      imageBuilder: (context, imageProvider) => Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(10),
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
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: Text(
                      state.searchJobDetail?.jobTitle ?? '',
                      style: CustomTextStyles.titleLargefff7941e,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: Text(
                      state.searchJobDetail?.industry ?? '',
                      style: CustomTextStyles.titleMediumff3a332cMedium,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hiring Type',
                            style: CustomTextStyles.titleSmallSemiBold,
                          ),
                          Text(
                            state.searchJobDetail?.hireType ?? '',
                            style:
                                CustomTextStyles.labelLargePrimaryContainer_2,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Date Posted',
                            style: CustomTextStyles.titleSmallSemiBold,
                          ),
                          Text(
                            AppFormatter.dateTimeFormatter.format(
                                state.searchJobDetail?.createdAt ??
                                    DateTime.now()),
                            style:
                                CustomTextStyles.labelLargePrimaryContainer_2,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Qualification',
                            style: CustomTextStyles.titleSmallSemiBold,
                          ),
                          Text(
                            state.searchJobDetail?.qualification ?? '',
                            style:
                                CustomTextStyles.labelLargePrimaryContainer_2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: CustomTextStyles.titleSmallSemiBold,
                          ),
                          Text(
                            state.searchJobDetail?.city ?? '',
                            style:
                                CustomTextStyles.labelLargePrimaryContainer_2,
                          ),
                        ],
                      ),
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pay',
                            style: CustomTextStyles.titleSmallSemiBold,
                          ),
                          Text(
                            state.searchJobDetail?.basicSalary ?? '',
                            style:
                                CustomTextStyles.labelLargePrimaryContainer_2,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Deadline',
                            style: CustomTextStyles.titleSmallSemiBold,
                          ),
                          Text(
                            state.searchJobDetail?.applicationDeadline ?? '',
                            style:
                                CustomTextStyles.labelLargePrimaryContainer_2,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Overview',
                    style: CustomTextStyles.titleMediumMedium18,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    state.searchJobDetail?.jobDescription ?? '',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Job Position',
                    style: CustomTextStyles.titleMediumMedium18,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    state.searchJobDetail?.position ?? '',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Education',
                    style: CustomTextStyles.titleMediumMedium18,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    state.searchJobDetail?.qualification ?? '',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Accommodation',
                    style: CustomTextStyles.titleMediumMedium18,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    state.searchJobDetail?.accomodation ?? '',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Required Skill',
                    style: CustomTextStyles.titleMediumMedium18,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    state.searchJobDetail?.itSkills ?? '',
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
