import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_assigned_applicants.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/features/candidate/presentation/widgets/accept_reject_page_modal_box_dialog.dart';
import 'package:artisan_oga/features/candidate/presentation/widgets/reject_modal.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_outlined_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AcceptRejectPageScreen extends HookWidget {
  final String jobIdentity;
  final GetAssignedApplicantsEntity getAssignedApplicantsEntity;
  const AcceptRejectPageScreen(
      {Key? key,
      required this.getAssignedApplicantsEntity,
      required this.jobIdentity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<CandidatesBloc>().add(CandidatesEvent.getCandidateSkill(
          getAssignedApplicantsEntity.users.identity));
      return null;
    }, []);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Applicant',
            ),
            body: BlocBuilder<CandidatesBloc, CandidatesState>(
              bloc: context.read<CandidatesBloc>()
                ..add(CandidatesEvent.getCandidateSkill(
                    getAssignedApplicantsEntity.users.identity)),
              builder: (context, state) {
                return Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                    child: Column(children: [
                      SizedBox(height: 26.v),

                      SizedBox(height: 35.v),
                      getAssignedApplicantsEntity.users.image != ''
                          ? CachedNetworkImage(
                              imageUrl: getAssignedApplicantsEntity.users.image,
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      const Center(),
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            )
                          : Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2, color: AppColors.kblack)),
                              child: Icon(
                                color: Colors.black,
                                Icons.person,
                                size: 70,
                              ),
                            ),

                      SizedBox(height: 8.v),
                      Text(getAssignedApplicantsEntity.users.fullName,
                          style: CustomTextStyles.titleLargePrimarySemiBold),
                      SizedBox(height: 5.v),
                      Text(getAssignedApplicantsEntity.users.availability,
                          style: CustomTextStyles.bodyLarge18),
                      SizedBox(height: 56.v),
                      //  Text('${state.candidateSkillList}'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomOutlinedButton(
                              height: 46.v,
                              width: 135.h,
                              text: "Accept",
                              margin: EdgeInsets.only(left: 22.h),
                              onPressed: () {
                                acceptCandidateDialog(
                                    context,
                                    getAssignedApplicantsEntity.users.identity,
                                    jobIdentity,
                                    state.candidateSkillList);
                              },
                              buttonStyle: CustomButtonStyles.fillPrimaryTL8,
                              buttonTextStyle:
                                  theme.textTheme.titleMedium!.copyWith(
                                fontSize: 19.fSize,
                                color: AppColors.kwhite,
                                fontWeight: FontWeight.w700,
                              )),
                          CustomOutlinedButton(
                              height: 46.v,
                              width: 135.h,
                              text: "Reject",
                              onPressed: () {
                                print(
                                    'user ${getAssignedApplicantsEntity.users.identity} ${getAssignedApplicantsEntity.identity}');
                                interviewedCandidate(
                                    context,
                                    getAssignedApplicantsEntity.users.identity,
                                    getAssignedApplicantsEntity.identity,
                                    state.candidateSkillList);
                              },
                              margin: EdgeInsets.only(left: 22.h),
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumBold),
                        ],
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        text: "View Candidate",
                        onPressed: () {
                          print(
                              'meee ${getAssignedApplicantsEntity.users.identity}');
                          Navigator.pushNamed(context,
                              AppRoutes.candidatesProfileAcceptPageScreen,
                              arguments:
                                  getAssignedApplicantsEntity.users.identity);
                        },
                      ),
                      SizedBox(height: 49.v),
                      SizedBox(
                          width: 130.h,
                          child: Divider(
                              color: theme.colorScheme.primaryContainer
                                  .withOpacity(1)))
                    ]));
              },
            )));
  }
}
