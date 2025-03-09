import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/app_formatter.dart';
import 'package:artisan_oga/features/home/domain/entities/employer_job_response_entiity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
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
      body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CachedNetworkImage(
                    imageUrl: 'https://picsum.photos/250?image=9',

                    //  state.jobSeekerJobList[index].profileImage,
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
                    employerJobResponseEntity.jobTitle ?? '',
                    style: CustomTextStyles.titleLargefff7941e,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Text(
                    employerJobResponseEntity.industry ?? '',
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
                          employerJobResponseEntity.hireType ?? '',
                          style: CustomTextStyles.labelLargePrimaryContainer_2,
                        ),
                      ],
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date Posted',
                          style: CustomTextStyles.titleSmallSemiBold,
                        ),
                        Text(
                          formatCardinalDate(
                              employerJobResponseEntity.createdAt ??
                                  DateTime.now()),
                          style: CustomTextStyles.labelLargePrimaryContainer_2,
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
                          employerJobResponseEntity.levelOfEducation ?? '',
                          style: CustomTextStyles.labelLargePrimaryContainer_2,
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
                          employerJobResponseEntity.city ?? '',
                          style: CustomTextStyles.labelLargePrimaryContainer_2,
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
                          employerJobResponseEntity.basicSalary ?? '',
                          style: CustomTextStyles.labelLargePrimaryContainer_2,
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
                          formatDateString(
                              employerJobResponseEntity.applicationDeadline ??
                                  ''),
                          style: CustomTextStyles.labelLargePrimaryContainer_2,
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
                  employerJobResponseEntity.jobDescription ?? '',
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
                  employerJobResponseEntity.position ?? '',
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
                  employerJobResponseEntity.levelOfEducation ?? '',
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
                  employerJobResponseEntity.accommodationAvailable ?? '',
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
                  employerJobResponseEntity.itSkills ?? '',
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
      }),
    );
  }
}
