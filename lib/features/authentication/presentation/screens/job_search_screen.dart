import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/search_job_data_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/j_s_create_account_page_one_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/screens/j_s_login_page_screen.dart';
import 'package:artisan_oga/features/authentication/presentation/widgets/job_seach_details.screen.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';

class JobSearchScreen extends HookWidget {
  const JobSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locationController = useTextEditingController();
    useEffect(() {
      context.read<AuthBloc>().add(AuthEvent.getCategory());
      // context.read<AuthBloc>().add(
      //       AuthEvent.getSkills('1'),
      //     );

      return null;
    }, []);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kwhite,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstant.bigLogo),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Durations.long1,
                                      child: JSCreateAccountPageOneScreen()));
                            },
                            child: Container(
                              child: Text('Register',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                      //fontWeight: FontWeight.w600,
                                      color: theme.primaryColor)),
                            ),
                          ),
                          SizedBox(
                            width: 20.v,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JSLoginPageScreen()),
                              );
                            },
                            child: Container(
                                height: 28.h,
                                width: 70.v,
                                padding: EdgeInsets.symmetric(vertical: 3),
                                decoration: BoxDecoration(
                                    color: theme.primaryColor,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                  child: Text('Login',
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(color: AppColors.kwhite)),
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Find New Relevant Jobs',
                      style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.blueGrey)),
                  SizedBox(
                    height: 20.h,
                  ),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: CustomDropDown<CategoryResponseEntity>(
                  //     title: 'Select Job Category',
                  //     items: state.categoryList,
                  //     selectedItem: state.categoryList.isNotEmpty
                  //         ? state.categoryList.firstWhere(
                  //             (category) =>
                  //                 category.id == (state.category?.id ?? 1),
                  //             orElse: () => state.categoryList.first)
                  //         : CategoryResponseEntity(id: 1, name: 'Fashion'),
                  //     itemLabel: (category) => category.name,
                  //     onChanged: (value) {
                  //       searchDialog(context, locationController);
                  //       // context.read<AuthBloc>().add(
                  //       //       AuthEvent.updateSelectedCategory(value!),
                  //       //     );

                  //       // context.read<AuthBloc>().add(
                  //       //       AuthEvent.getSkills(value.id.toString()),
                  //       //     );
                  //     },
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20.h,
                  // ),
                  // CustomDropDown<SkillResponseEntity>(
                  //   title: 'Select Job Skill',
                  //   items: state.skill,
                  //   selectedItem: state.skill.isNotEmpty
                  //       ? state.skill.firstWhere(
                  //           (category) =>
                  //               category.id == (state.category?.id ?? 1),
                  //           orElse: () => state.skill.first)
                  //       : SkillResponseEntity(
                  //           id: 1, name: 'Corset', categoryId: 1),
                  //   itemLabel: (category) => category.name,
                  //   onChanged: (value) {
                  //     context.read<AuthBloc>().add(
                  //           AuthEvent.updateSkill(value!),
                  //         );
                  //   },
                  // ),
                  // SizedBox(
                  //   height: 20.h,
                  // ),
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
                  // SizedBox(
                  //   height: 20.h,
                  // ),
                  // Row(
                  //   children: [
                  //     CustomElevatedButton(
                  //       width: 180.v,
                  //       // isBusy: state.searchJobState == SearchJobState.loading,
                  //       onPressed: () {
                  //         context.read<AuthBloc>().add(
                  //               AuthEvent.searchJobs(SearchJobDataEntity(
                  //                   category: state.category?.id ?? 1,
                  //                   location: locationController.text,
                  //                   skill: state.singleSkill?.name ?? '')),
                  //             );
                  //       },
                  //       text: "Search",
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 20.h,
                  // ),
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
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              Text(
                                                  state.searchJobEntity[index]
                                                      .industry,
                                                  style: theme
                                                      .textTheme.bodyMedium),
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
                                                        .jobSearchDetailsScreen,
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
                  // ...List.generate(state.searchJobEntity.length, (index) {
                  //   return Material(
                  //     elevation: 3,
                  //     child: Container(
                  //       padding: EdgeInsets.symmetric(
                  //           horizontal: 10, vertical: 10),
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text(state.searchJobEntity[index].jobTitle,
                  //               style: theme.textTheme.bodyMedium?.copyWith(
                  //                   fontWeight: FontWeight.w600,
                  //                   fontSize: 20)),
                  //           SizedBox(
                  //             height: 3.h,
                  //           ),
                  //           Text(state.searchJobEntity[index].industry,
                  //               style: theme.textTheme.bodyMedium),
                  //           SizedBox(
                  //             height: 5.h,
                  //           ),
                  //           Row(
                  //             children: [
                  //               Image.asset(ImageConstant.money),
                  //               SizedBox(
                  //                 width: 10.v,
                  //               ),
                  //               Text(state.searchJobEntity[index].basicSalary,
                  //                   style:
                  //                       theme.textTheme.bodyMedium?.copyWith(
                  //                     fontWeight: FontWeight.w500,
                  //                   )),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 20.h,
                  //           ),
                  //           Row(
                  //             children: [
                  //               Image.asset(ImageConstant.locationImage),
                  //               SizedBox(
                  //                 width: 10.v,
                  //               ),
                  //               Text(state.searchJobEntity[index].city,
                  //                   style: theme.textTheme.bodyMedium),
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             height: 20.h,
                  //           ),
                  //           Row(
                  //             children: [
                  //               Image.asset(ImageConstant.time),
                  //               SizedBox(
                  //                 width: 10.v,
                  //               ),
                  //               Text('C', style: theme.textTheme.bodyMedium),
                  //             ],
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   );
                  // })
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
