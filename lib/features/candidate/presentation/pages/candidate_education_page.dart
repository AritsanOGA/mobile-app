import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_outlined_button.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CandidateEducationPage extends HookWidget {
  const CandidateEducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleStatus: false,
        title: '',
      ),
      body: BlocBuilder<CandidatesBloc, CandidatesState>(
        bloc: context.read<CandidatesBloc>()
          ..add(CandidatesEvent.getEducation()),
        builder: (context, state) {
          if (state.getEducationeState == ViewState.loading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state.getEducationeState == ViewState.failure) {
            return Center(child: Text('Error: '));
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomOutlinedButton(
                  height: 46.v,
                  width: 200.h,
                  text: "Add New Education",
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.addEducationPage);
                  },
                  margin: EdgeInsets.only(left: 22.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                  buttonTextStyle: theme.textTheme.titleMedium!.copyWith(
                    fontSize: 19.fSize,
                    color: AppColors.kwhite,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: 30.v),
              ...List.generate(state.getEducationEntity.length, (index) {
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
                                    '${state.getEducationEntity[index].title}'
                                    '(${state.getEducationEntity[index].year})',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.updateEducationScreen,
                                      arguments:
                                          state.getEducationEntity[index],
                                    );
                                  },
                                  child: Image.asset(
                                    ImageConstant.edit,
                                    width: 22,
                                    height: 22,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 8.v),
                            Text(state.getEducationEntity[index].purpose,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                            SizedBox(height: 5.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(state.getEducationEntity[index].degree,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14)),
                                GestureDetector(
                                    onTap: () {
                                      deleteEducation(
                                          context,
                                          state.getEducationEntity[index]
                                              .identity
                                              .toString());
                                    },
                                    child: Image.asset(
                                      ImageConstant.delete,
                                    ))
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

  Future<void> deleteEducation(context, String identity) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return BlocListener<CandidatesBloc, CandidatesState>(
          listener: (context, state) {
            if (state.deleteEducationeState == ViewState.success) {
              Navigator.pushNamed(
                context,
                AppRoutes.successScreen2,
                arguments: {
                  'message': 'Deleted Successfully',
                  'onTap': () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.jobSeekerNavBarScreen,
                    );
                  },
                },
              );
            } else if (state.deleteEducationeState == ViewState.failure) {
              ToastUtils.showRedToast(state.errorMessage ?? '');
            }
          },
          child: AlertDialog(
              titlePadding: EdgeInsets.zero,
              actionsPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.zero,
              content: Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(height: 20.v),
                    Text(
                      textAlign: TextAlign.center,
                      'Are you sure you want to remove this education?',
                      style:
                          CustomTextStyles.titleMediumPrimaryContainerMedium_1,
                    ),
                    SizedBox(height: 40.v),
                    Row(
                      children: [
                        BlocBuilder<CandidatesBloc, CandidatesState>(
                          builder: (context, state) {
                            return GestureDetector(
                              onTap: () {
                                context.read<CandidatesBloc>().add(
                                      CandidatesEvent.deleteEducation(
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
                                  child: state.deleteEducationeState ==
                                          ViewState.loading
                                      ? CircularProgressIndicator(
                                          color: AppColors.kwhite,
                                        )
                                      : Text(
                                          'Yes',
                                          style: TextStyle(
                                              color: AppColors.kwhite),
                                        ),
                                ),
                              ),
                            );
                          },
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
                                color: Colors.grey.withOpacity(0.2),
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
              )),
        );
      },
    );
  }
}
