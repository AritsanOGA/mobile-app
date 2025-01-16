import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/candidate_skill_entity.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Future<void> rejectCandidateDialog(context, String identityId,
    String jobIdentitty, List<CandidateSkillEntity> entity) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: EdgeInsets.zero,
        actionsPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: RejectPageModalBoxDialog(
          identityId: identityId,
          jobIdentity: jobIdentitty,
          entity: entity,
        ),
      );
    },
  );
}

// ignore_for_file: must_be_immutable
class RejectPageModalBoxDialog extends HookWidget {
  final String identityId;
  final String jobIdentity;
  final List<CandidateSkillEntity> entity;
  RejectPageModalBoxDialog({
    Key? key,
    required this.identityId,
    required this.jobIdentity,
    required this.entity,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final reviewController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return BlocConsumer<CandidatesBloc, CandidatesState>(
      listener: (context, state) {
        if (state.rejectCandidateState == RejectCandidateState.success) {
          Navigator.pushNamed(context, AppRoutes.employerNavBarScreen);
        } else if (state.rejectCandidateState == RejectCandidateState.failure) {
          ToastUtils.showRedToast(state.errorMessage ?? '');
        }
        ;
      },
      bloc: context.read<CandidatesBloc>()
        ..add(CandidatesEvent.getCandidateSkill(identityId))
        ..add(CandidatesEvent.initializeSkills(entity)),
      builder: (context, state) {
        if (state.getCandidateSkillState == GetCandidateSkillState.loading) {
          return Center(child: CircularProgressIndicator());
        }

        return Form(
          key: formKey,
          child: Container(
            width: 380.h,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 28.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Kindly Endorse this Applicant",
                    style: CustomTextStyles.titleMediumPrimaryContainer18,
                  ),
                ),
                SizedBox(height: 12.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Rate this Applicant Skills from 1-10",
                    style: CustomTextStyles.bodyMediumGray700,
                  ),
                ),
                SizedBox(height: 20.v),
                Text(
                  "Technical Skills",
                  style: CustomTextStyles.titleMediumPrimaryContainerMedium_1,
                ),
                SizedBox(height: 20.v),
                ...List.generate(state.candidateSkillList.length, (index) {
                  final skill = state.candidateSkillList[index].skills;
                  final rating = state.dropdownValues[index];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: CustomDropDown<String>(
                      title: skill,
                      items: state.dropdownList,
                      selectedItem: rating,
                      itemLabel: (gender) => gender,
                      onChanged: (value) {
                        context.read<CandidatesBloc>().add(
                              CandidatesEvent.updateSkillRating(
                                  value ?? '', index),
                            );
                        print('${value}');
                      },
                    ),
                  );
                }),
                SizedBox(height: 13.v),
                CustomTextFormField(
                  title: 'Review',
                  titleStyle:
                      CustomTextStyles.titleMediumPrimaryContainerMedium_1,
                  controller: reviewController,
                  hintText: "Share your experience with this candidate",
                  validator: FormValidation.stringValidation,
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 31.v),
                CustomElevatedButton(
                  text: "Reject",
                  isBusy: state.rejectCandidateState ==
                      RejectCandidateState.loading,
                  onPressed: () {
                    final selectedRatings =
                        state.dropdownValues.map(int.parse).toList();
                    if (formKey.currentState!.validate()) {
                      context.read<CandidatesBloc>().add(
                          CandidatesEvent.rejectCandidate(AcceptCandidateEntity(
                              skillId: state.candidateSkillList
                                  .map((e) => e.id ?? 0)
                                  .toList(),
                              ratings: selectedRatings,
                              remark: reviewController.text,
                              jobIdentity: jobIdentity,
                              candidateIdentity: identityId)));
                    }
                  },
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        );
      },
    );
  }
}
