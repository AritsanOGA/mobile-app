import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/presentation/widgets/manage_job_widget.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ManageJobsPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<HomeBloc>().add(HomeEvent.getEmployerJob());

      return null;
    }, []);
    return Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          title: 'Manage Job Post',
        ),
        body: Container(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 38.v),
              BlocBuilder<HomeBloc, HomeState>(
                // bloc: context.read<HomeBloc>()
                //   ..add(HomeEvent.getEmployerJob()),
                builder: (context, state) {
                  // if (state.getEmployerJobState ==
                  //     GetEmployerJobState.loading) {
                  //   return Centber(child: CircularProgressIndicator());
                  // }

                  if (state.getEmployerJobState ==
                      GetEmployerJobState.failure) {
                    return Center(child: Text('Error: '));
                  }

                  if (state.employerJobList.isEmpty) {
                    return Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "No job.",
                          style: CustomTextStyles.titleMediumPrimaryContainer18,
                        ),
                      ],
                    );
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
            ])));
  }
}
