import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/candidate/domain/entities/accept_candidate_entity.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Future<void> acceptCandidateDialog(
    context, String identityId, String jobIdentitty) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: EdgeInsets.zero,
        actionsPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: AcceptRejectPageModalBoxDialog(
          identityId: identityId,
          jobIdentity: jobIdentitty,
        ),
      );
    },
  );
}

// ignore_for_file: must_be_immutable
class AcceptRejectPageModalBoxDialog extends HookWidget {
  final String identityId;
  final String jobIdentity;
  AcceptRejectPageModalBoxDialog(
      {Key? key, required this.identityId, required this.jobIdentity})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    final reviewController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return BlocBuilder<CandidatesBloc, CandidatesState>(
      bloc: context.read<CandidatesBloc>()
        ..add(CandidatesEvent.getCandidateSkill(identityId)),
      builder: (context, state) {
        return Container(
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
              SizedBox(height: 37.v),
              Text(
                "Technical Skills",
                style: CustomTextStyles.titleMediumPrimaryContainerMedium_1,
              ),
              SizedBox(height: 12.v),
              ...List.generate(state.candidateSkillList.length, (index) {
                return CustomDropDown<String>(
                  title: state.candidateSkillList[index].skills ?? '',
                  items: state.dropdownList,
                  selectedItem: state.dropdownValue,
                  itemLabel: (gender) => gender,
                  onChanged: (value) {
                    context.read<AuthBloc>().add(
                          AuthEvent.updateSelectedGender(value ?? ''),
                        );
                  },
                );
              }),
              SizedBox(height: 13.v),
              CustomTextFormField(
                title: 'Review',
                controller: reviewController,
                hintText: "Share your experience with this candidate",
                validator: FormValidation.emailValidation,
                hintStyle: theme.textTheme.titleSmall!,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                text: "Submit",
                onPressed: () {
                  context.read<CandidatesBloc>().add(
                      CandidatesEvent.acceptCandidate(AcceptCandidateEntity(
                          skillId: state.candidateSkillList[0].skillId,
                          ratings: [],
                          remark: reviewController.text,
                          jobIdentity: jobIdentity,
                          candidateIdentity: identityId)));
                },
              ),
              SizedBox(height: 2.v),
            ],
          ),
        );
      },
    );
  }
}
