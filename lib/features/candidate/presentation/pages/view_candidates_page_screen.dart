import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../widgets/userprofilegrid_item_widget.dart';

class ViewCandidatesPageScreen extends HookWidget {
  final String jobId;
  final String jobIdentity;

  ViewCandidatesPageScreen({
    Key? key,
    required this.jobId,
    required this.jobIdentity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<CandidatesBloc>()
        ..add(CandidatesEvent.getAssignedCandidate(jobId));

      return null;
    }, []);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Applicants',
            ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  BlocBuilder<CandidatesBloc, CandidatesState>(
                    // bloc: context.read<CandidatesBloc>()
                    //   ..add(CandidatesEvent.getAssignedCandidate(jobId)),
                    builder: (context, state) {
                      if (state.getAssignedCandidateState ==
                          GetAssignedCandidateState.loading) {
                        return Center(child: CircularProgressIndicator());
                      }

                      if (state.getAssignedCandidateState ==
                          GetAssignedCandidateState.failure) {
                        return Center(child: Text('Error: '));
                      }

                      if (state.getAssignedCandidateList.isEmpty) {
                        return Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "No applicants for this job.",
                              style: CustomTextStyles
                                  .titleMediumPrimaryContainer18,
                            ),
                          ],
                        );
                      }

                      return Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 6.h,
                            crossAxisSpacing: 6.h,
                          ),

                          scrollDirection: Axis.vertical, // Remove this line

                          itemCount: state.getAssignedCandidateList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.acceptRejectPageScreen,
                                    arguments: {
                                      "jobIdentity": jobIdentity,
                                      "applicantEntity":
                                          state.getAssignedCandidateList[index]
                                    });
                              },
                              child: UserprofilegridItemWidget(
                                  getAssignedApplicantsEntity:
                                      state.getAssignedCandidateList[index]),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ]))));
  }
}
