import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/app_formatter.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobHistoryDetailsScreen extends StatelessWidget {
  final EmployerJobResponseEntity employerJobResponseEntity;
  const JobHistoryDetailsScreen(
      {super.key, required this.employerJobResponseEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      appBar: CustomAppBar(
        title: '',
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: context.read<AuthBloc>()
          ..add(AuthEvent.searchJobDetails(
              employerJobResponseEntity.identity.toString())),
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
                      state.searchJobDetail?.jobDetails.jobTitle ?? '',
                      style: CustomTextStyles.titleLargefff7941e,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: Text(
                      state.searchJobDetail?.jobDetails.industry ?? '',
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
                            state.searchJobDetail?.jobDetails.hireType ?? '',
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
                                state.searchJobDetail?.jobDetails.createdAt ??
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
                            state.searchJobDetail?.jobDetails.qualification ??
                                '',
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
                            state.searchJobDetail?.jobDetails.city ?? '',
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
                            state.searchJobDetail?.jobDetails.basicSalary ?? '',
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
                            state.searchJobDetail?.jobDetails
                                    .applicationDeadline ??
                                '',
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
                    state.searchJobDetail?.jobDetails.jobDescription ?? '',
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
                    state.searchJobDetail?.jobDetails.position ?? '',
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
                    state.searchJobDetail?.jobDetails.qualification ?? '',
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
                    state.searchJobDetail?.jobDetails.accomodation ?? '',
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
                    state.searchJobDetail?.jobSkills ?? '',
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 40.h,
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
