import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/core/utils/app_formatter.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/features/home/domain/entities/featured_job_entity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/home/presentation/widgets/apply_for_job_dialog.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedJobDetailsScreen extends StatelessWidget {
  final FeaturedJobResponseEntity featuredJobResponseEntity;
  const FeaturedJobDetailsScreen(
      {super.key, required this.featuredJobResponseEntity});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, states) {
        if (states.applyForJobState == ApplyForJobState.success) {
          // Navigator.pushNamed(context, AppRoutes.successfulJobPostedPage);
          Navigator.pushNamed(context, AppRoutes.successfulJobApplicationPage);
        } else if (states.applyForJobState == ApplyForJobState.failure) {
          ToastUtils.showRedToast(states.errorMessage ?? '');
        }
      },
      child: BlocListener<CandidatesBloc, CandidatesState>(
        listener: (context, candidatesState) {
          if (candidatesState.checkIfAppliedState == ViewState.success) {
            if (candidatesState.hasAppliedForJob) {
              ToastUtils.showRedToast('You have already applied for this job');
            } else {
              final jobId = context
                      .read<AuthBloc>()
                      .state
                      .searchJobDetail
                      ?.jobDetails
                      .id
                      .toString() ??
                  '';
              showApplyForJobDialog(context, jobId);
            }
          } else if (candidatesState.checkIfAppliedState == ViewState.failure) {
            ToastUtils.showRedToast(
                candidatesState.errorMessage ?? 'Something went wrong');
          }
        },
        child: Scaffold(
          backgroundColor: AppColors.kwhite,
          appBar: CustomAppBar(
            title: '',
          ),
          body: BlocBuilder<AuthBloc, AuthState>(
            bloc: context.read<AuthBloc>()
              ..add(AuthEvent.searchJobDetails(
                  featuredJobResponseEntity.identity.toString())),
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
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(ImageConstant.jobImage),
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
                                state.searchJobDetail?.jobDetails.hireType ??
                                    '',
                                style: CustomTextStyles
                                    .labelLargePrimaryContainer_2,
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
                                AppFormatter.dateTimeFormatter.format(state
                                        .searchJobDetail
                                        ?.jobDetails
                                        .createdAt ??
                                    DateTime.now()),
                                style: CustomTextStyles
                                    .labelLargePrimaryContainer_2,
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
                                state.searchJobDetail?.jobDetails
                                        .qualification ??
                                    '',
                                style: CustomTextStyles
                                    .labelLargePrimaryContainer_2,
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
                                style: CustomTextStyles
                                    .labelLargePrimaryContainer_2,
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
                              state.searchJobDetail?.jobDetails
                                              .compensationType ==
                                          'payperjob' ||
                                      state.searchJobDetail?.jobDetails
                                              .compensationType ==
                                          'Negotiable'
                                  ? Text('Pay per job',
                                      style:
                                          theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ))
                                  : Text(
                                      state.searchJobDetail?.jobDetails
                                              .basicSalary ??
                                          '',
                                      style: CustomTextStyles
                                          .labelLargePrimaryContainer_2,
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
                                style: CustomTextStyles
                                    .labelLargePrimaryContainer_2,
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
                      ...List.generate(
                          state.searchJobDetail?.jobSkills.length ?? 0,
                          (index) {
                        return Text(
                          state.searchJobDetail?.jobSkills[index].skill ?? '',
                        );
                      }),
                      SizedBox(
                        height: 30.h,
                      ),
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, states) {
                          return BlocBuilder<CandidatesBloc, CandidatesState>(
                            builder: (context, candidatesState) {
                              return CustomElevatedButton(
                                  isBusy: states.applyForJobState ==
                                          ApplyForJobState.loading ||
                                      candidatesState.checkIfAppliedState ==
                                          ViewState.loading,
                                  text: 'Apply Now',
                                  onPressed: () {
                                    // if (state.candidateProfile?.profiles.idcard ==
                                    //     null) {
                                    //   uploadWordID(context, jobId);
                                    // } else
                                    // {
                                    final jobId = state
                                            .searchJobDetail?.jobDetails.id
                                            .toString() ??
                                        '';
                                    final identity =
                                        UserService().authData?.user.identity ??
                                            '';
                                    context.read<CandidatesBloc>().add(
                                        CandidatesEvent.checkIfApplied(
                                            jobId, identity));
                                    // }
                                  });
                            },
                          );
                        },
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
        ),
      ),
    );
  }
}
