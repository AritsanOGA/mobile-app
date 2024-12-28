import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../presentation/view_candidates_page_screen/widgets/userprofilegrid_item_widget.dart';

class ViewCandidatesPageScreen extends StatelessWidget {
  final String jobId;

  ViewCandidatesPageScreen({
    Key? key,
    required this.jobId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Applicants"),
            ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [])),
                  SizedBox(height: 19.v),
                  Text("Click on any applicant to view their profile",
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 36.v),
                  BlocBuilder<CandidatesBloc, CandidatesState>(
                    bloc: context.read<CandidatesBloc>()
                      ..add(CandidatesEvent.getAssignedCandidate(jobId)),
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
                        return Center(
                            child: Text(
                          "No applicants for this job.",
                        ));
                      }

                      return SizedBox(
                        height: 200.h,
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
                                    arguments:
                                        state.getAssignedCandidateList[index]);
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
