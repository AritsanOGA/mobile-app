import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_data_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/authentication/presentation/widgets/job_seach_dialog.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class SearchScreenPage extends HookWidget {
  const SearchScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final locationController = useTextEditingController();
    useEffect(() {
      context.read<AuthBloc>().add(AuthEvent.getCategory());

      return null;
    }, []);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          hasBackButton: false,
          title: 'Search For Jobs',
        ),
        body: BlocBuilder<AuthBloc, AuthState>(
          bloc: context.read<AuthBloc>()
            ..add(AuthEvent.searchJobs(
                SearchJobDataEntity(category: 1, location: '', skill: ''))),
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    ontap: () {
                      searchDialog(context, locationController);
                    },
                    title: 'Location',
                    readOnly: true,
                    controller: locationController,
                    hintText: "Enter location",
                    hintStyle: theme.textTheme.titleSmall!,
                  ),
                  state.searchJobState == SearchJobState.loading
                      ? Column(
                          children: [
                            SizedBox(
                              height: 100.h,
                            ),
                            CircularProgressIndicator(
                              color: theme.primaryColor,
                            ),
                          ],
                        )
                      : state.searchJobEntity.isEmpty
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 200,
                                ),
                                Text('No Result found',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            )
                          : Expanded(
                              child: ListView.builder(
                                  itemCount: state.searchJobEntity.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 10),
                                      child: Material(
                                        elevation: 5,
                                        borderRadius: BorderRadius.circular(20),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  state.searchJobEntity[index]
                                                      .jobTitle,
                                                  style: theme
                                                      .textTheme.bodyMedium
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 20)),
                                              // SizedBox(
                                              //   height: 3.h,
                                              // ),
                                              // Text(
                                              //     state.searchJobEntity[index]
                                              //         .industry,
                                              //     style: theme
                                              //         .textTheme.bodyMedium),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      ImageConstant.money),
                                                  SizedBox(
                                                    width: 10.v,
                                                  ),
                                                  Text(
                                                      state
                                                          .searchJobEntity[
                                                              index]
                                                          .basicSalary,
                                                      style: theme
                                                          .textTheme.bodyMedium
                                                          ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      )),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                children: [
                                                  Image.asset(ImageConstant
                                                      .locationImage),
                                                  SizedBox(
                                                    width: 10.v,
                                                  ),
                                                  Text(
                                                      state
                                                          .searchJobEntity[
                                                              index]
                                                          .city,
                                                      style: theme.textTheme
                                                          .bodyMedium),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      ImageConstant.time),
                                                  SizedBox(
                                                    width: 10.v,
                                                  ),
                                                  Text(
                                                      DateFormat(
                                                              "yyyy-MM-dd hh:mm a")
                                                          .format(state
                                                              .searchJobEntity[
                                                                  index]
                                                              .createdAt),
                                                      style: theme.textTheme
                                                          .bodyMedium),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                    context,
                                                    AppRoutes
                                                        .searchDetailsScreen,
                                                    arguments: state
                                                        .searchJobEntity[index]
                                                        .identity,
                                                  );
                                                },
                                                child: Container(
                                                  height: 40.h,
                                                  width: 180.v,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10),
                                                  decoration: BoxDecoration(
                                                      color: theme.primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    children: [
                                                      Text('View Job Details',
                                                          style: theme.textTheme
                                                              .bodyMedium
                                                              ?.copyWith(
                                                                  color: AppColors
                                                                      .kwhite)),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Image.asset(
                                                        ImageConstant.doc,
                                                        color: AppColors.kwhite,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
