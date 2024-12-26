import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/home/presentation/widgets/manage_job_widget.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageJobsPage extends StatefulWidget {
  @override
  _ManageJobsPageState createState() => _ManageJobsPageState();
}

class _ManageJobsPageState extends State<ManageJobsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
              title: 'Manage Job Post',
              hasBackButton: false,
            ),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  SizedBox(height: 38.v),
                  BlocBuilder<HomeBloc, HomeState>(
                    bloc: context.read<HomeBloc>()
                      ..add(HomeEvent.getEmployerJob()),
                    builder: (context, state) {
                      if (state.getEmployerJobState ==
                          GetEmployerJobState.loading) {
                        return Center(child: CircularProgressIndicator());
                      }

                      if (state.getEmployerJobState ==
                          GetEmployerJobState.failure) {
                        return Center(child: Text('Error: '));
                      }
                      return Expanded(
                        child: ListView.builder(
                          itemCount: state.employerJobList.length,
                          itemBuilder: (context, index) {
                            return ManageJobWidget(
                                employerJobResponseEntity:
                                    state.employerJobList[index]);
                          },
                        ),
                      );
                    },
                  )
                ]))));
  }
}
