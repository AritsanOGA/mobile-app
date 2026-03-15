import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_awards_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/update_awards_entity.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:artisan_oga/theme/custom_text_style.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UpdateAwardPage extends HookWidget {
  final GetAwardEntity entity;
  const UpdateAwardPage({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController(text: entity.title);
    return Scaffold(
      appBar: CustomAppBar(
        titleStatus: false,
        title: '',
      ),
      body: BlocConsumer<CandidatesBloc, CandidatesState>(
        listener: (context, state) {
          if (state.updateAwardsState == ViewState.success) {
            Navigator.pushNamed(
              context,
              AppRoutes.successScreen2,
              arguments: {
                'message': 'Updated Successfully',
                'onTap': () {
                  // Navigator.pop(context);
                  // Navigator.pop(context);
                  // Navigator.pushNamed(
                  //   context,
                  //   AppRoutes.jobSeekerNavBarScreen,
                  // );
                     Navigator.pushNamedAndRemoveUntil(context,
                      AppRoutes.jobSeekerNavBarScreen, (router) => false);
                },
              },
            );
          } else if (state.updateAwardsState == ViewState.failure) {
            ToastUtils.showRedToast(state.errorMessage ?? '');
          }
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Update Certification/Awards',
                  style: CustomTextStyles.titleSmallSemiBold,
                ),
                SizedBox(height: 30.v),
                CustomTextFormField(
                  title: 'Title',
                  controller: titleController,
                  hintText: "Enter title",
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.emailAddress,
                  validator: FormValidation.stringValidation,
                ),
                // SizedBox(height: 20.v),
                // Container(
                //     margin: EdgeInsets.only(right: 10.h),
                //     padding:
                //         EdgeInsets.symmetric(vertical: 6.v, horizontal: 5.v),
                //     decoration: AppDecoration.outlineBlueGray.copyWith(
                //         borderRadius: BorderRadiusStyle.roundedBorder7),
                //     child: Row(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           InkWell(
                //               onTap: () {
                //                 context
                //                     .read<CandidatesBloc>()
                //                     .add(CandidatesEvent.selectAward());
                //               },
                //               child: Container(
                //                   height: 30,
                //                   decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(5),
                //                       color: Colors.grey.withOpacity(0.4)),
                //                   child: Center(
                //                     child: Padding(
                //                       padding: const EdgeInsets.symmetric(
                //                           horizontal: 10),
                //                       child: Text('Choose File',
                //                           style: theme.textTheme.labelMedium
                //                               ?.copyWith(
                //                                   color: const Color.fromARGB(
                //                                       255, 88, 49, 49))),
                //                     ),
                //                   ))),
                //           SizedBox(width: 5.v),
                //           Padding(
                //             padding: EdgeInsets.only(top: 5.v, right: 5.v),
                //             child: Text(
                //                 state.award == null
                //                     ? "No file chosen"
                //                     : "Files selected",
                //                 style: theme.textTheme.labelLarge),
                //           )
                //         ])),
                SizedBox(height: 30.v),
                CustomElevatedButton(
                  width: 150,
                  isBusy: state.updateAwardsState == ViewState.loading,
                  onPressed: () {
                    context.read<CandidatesBloc>().add(
                          CandidatesEvent.updateAward(UpdateAwardEntity(
                              identity: entity.identity,
                              title: titleController.text)),
                        );
                  },
                  text: "Submit",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
