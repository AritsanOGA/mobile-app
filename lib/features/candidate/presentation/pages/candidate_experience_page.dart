import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CandidateExperiencePage extends HookWidget {
  const CandidateExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleStatus: false,
        title: '',
      ),
      body: BlocBuilder<CandidatesBloc, CandidatesState>(
        bloc: context.read<CandidatesBloc>()
          ..add(CandidatesEvent.getExperience()),
        builder: (context, state) {
          if (state.getExperienceState == ViewState.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.getExperienceState == ViewState.failure) {
            return Center(child: Text('Error: '));
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomOutlinedButton(
                  height: 46.v,
                  width: 200.h,
                  text: "Add New Experience",
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.addExperiencePage);
                  },
                  margin: EdgeInsets.only(left: 22.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                  buttonTextStyle: theme.textTheme.titleMedium!.copyWith(
                    fontSize: 19.fSize,
                    color: AppColors.kwhite,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: 15.v),
              ...List.generate(state.getExperienceEntity.length, (index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  state.getExperienceEntity[index].title ?? '',
                                  style: CustomTextStyles.titleSmallSemiBold,
                                ),
                                Text(
                                  '${state.getExperienceEntity[index].startYear} - ${state.getExperienceEntity[index].yearEnd}',
                                  style: CustomTextStyles.titleSmallSemiBold,
                                ),
                              ],
                            ),
                            SizedBox(height: 5.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  state.getExperienceEntity[index].purpose ??
                                      '',
                                  style: CustomTextStyles.titleSmallSemiBold,
                                ),
                              ],
                            ),
                            SizedBox(height: 5.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('My handle'),
                                GestureDetector(
                                    onTap: () {
                                      deleteExperience(
                                          context,
                                          state.getExperienceEntity[index].id
                                              .toString());
                                    },
                                    child: Image.asset(ImageConstant.delete))
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Divider(
                        height: 2,
                        color: theme.primaryColor,
                      ),
                      SizedBox(height: 20.v),
                    ],
                  ),
                );
              })
            ],
          );
        },
      ),
    );
  }

  Future<void> deleteExperience(context, String identity) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
            titlePadding: EdgeInsets.zero,
            actionsPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            // backgroundColor: Colors.transparent,
            content: Container(
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    'Are you sure you want to remove this Education?',
                    style: CustomTextStyles.titleMediumPrimaryContainerMedium_1,
                  ),
                  SizedBox(height: 20.v),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<CandidatesBloc>().add(
                                CandidatesEvent.deleteExperience(
                                  identity,
                                ),
                              );
                        },
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Yes',
                              style: TextStyle(color: AppColors.kwhite),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 14.v),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'No',
                              style: TextStyle(color: AppColors.kblack),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ));
      },
    );
  }
}
