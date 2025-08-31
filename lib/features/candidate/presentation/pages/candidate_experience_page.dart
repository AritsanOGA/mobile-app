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

class CandidateExperiencePage extends HookWidget {
  const CandidateExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    // fire once
    useEffect(() {
      context.read<CandidatesBloc>().add(CandidatesEvent.getExperience());
      return null;
    }, const []);

    return Scaffold(
      appBar: const CustomAppBar( title: 'Experience'),
      body: Padding(
        padding: EdgeInsets.only(
          top: 12.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Fixed header (does not scroll)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.h),
              child: CustomOutlinedButton(
                height: 46.v,
                width: 200.h,
                text: "Add New Experience",
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.addExperiencePage),
                buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                buttonTextStyle: theme.textTheme.titleMedium!.copyWith(
                  fontSize: 19.fSize,
                  color: AppColors.kwhite,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 30.v),

            // ===== Only this area scrolls
            Expanded(
              child: BlocBuilder<CandidatesBloc, CandidatesState>(
                builder: (context, state) {
                  if (state.getExperienceState == ViewState.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.getExperienceState == ViewState.failure) {
                    return const Center(child: Text('Error'));
                  }

                  final items = state.getExperienceEntity;

                  return ListView.separated(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 20.h,
                      bottom: 32.v,
                    ),
                    itemCount: items.length,
                    separatorBuilder: (_, __) => Column(
                      children: [
                        SizedBox(height: 14.v),
                        Divider(height: 2, color: theme.primaryColor),
                        SizedBox(height: 20.v),
                      ],
                    ),
                    itemBuilder: (context, index) {
                      final exp = items[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    exp.title ?? '',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.updateExperienceScreen,
                                      arguments: exp,
                                    );
                                  },
                                  child: Image.asset(
                                    ImageConstant.edit,
                                    width: 22,
                                    height: 22,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.v),

                            Text(
                              '${exp.startYear} - ${exp.yearEnd}',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 5.v),

                            Text(
                              exp.purpose ?? '',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5.v),

                            // Verified + Delete
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Verified',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => deleteExperience(
                                      context, exp.identity.toString()),
                                  child: Image.asset(ImageConstant.delete),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> deleteExperience(BuildContext context, String identity) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return BlocListener<CandidatesBloc, CandidatesState>(
          listener: (context, state) {
            if (state.deleteExperienceState == ViewState.success) {
              Navigator.pushNamed(
                context,
                AppRoutes.successScreen2,
                arguments: {
                  'message': 'Deleted Successfully',
                  'onTap': () {
                    Navigator.pushNamed(
                        context, AppRoutes.jobSeekerNavBarScreen);
                  },
                },
              );
            } else if (state.deleteExperienceState == ViewState.failure) {
              ToastUtils.showRedToast(state.errorMessage ?? '');
            }
          },
          child: AlertDialog(
            titlePadding: EdgeInsets.zero,
            actionsPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            content: Container(
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  SizedBox(height: 20.v),
                  Text(
                    'Are you sure you want to remove this experience?',
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumPrimaryContainerMedium_1,
                  ),
                  SizedBox(height: 40.v),
                  Row(
                    children: [
                      BlocBuilder<CandidatesBloc, CandidatesState>(
                        builder: (context, state) {
                          final isLoading =
                              state.deleteExperienceState == ViewState.loading;
                          return GestureDetector(
                            onTap: isLoading
                                ? null
                                : () => context.read<CandidatesBloc>().add(
                                    CandidatesEvent.deleteExperience(identity)),
                            child: Container(
                              height: 40,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: isLoading
                                    ? const CircularProgressIndicator(
                                        color: AppColors.kwhite)
                                    : const Text('Yes',
                                        style:
                                            TextStyle(color: AppColors.kwhite)),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 14.v),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text('No',
                                style: TextStyle(color: AppColors.kblack)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
