import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/app_formatter.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/j_s_create_account_page_one_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../shared/widgets/custom_appbar.dart';

class JobSearchDetailsScreen extends StatelessWidget {
  final String jobId;
  const JobSearchDetailsScreen({super.key, required this.jobId});

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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(ImageConstant.jobImage),
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
                           state.searchJobDetail?.compensationType ==
                                        'payperjob' ||
                                    state.searchJobDetail?.compensationType ==
                                        'Negotiable'
                                ? Text('Pay per job',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ))
                                :    Text(
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
                  ...List.generate(state.searchJobDetail?.jobSkills.length ?? 0,
                      (index) {
                    return Text(
                      state.searchJobDetail?.jobSkills[index].skill ?? '',
                    );
                  }),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomElevatedButton(
                      text: 'Apply Now',
                      onPressed: () {
                        ToastUtils.showRedToast('Create a account to apply');
                        Future.delayed(Duration(seconds: 3), () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Durations.long1,
                                  child: JSCreateAccountPageOneScreen()));
                        });
                      }),
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
