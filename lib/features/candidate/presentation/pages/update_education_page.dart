import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/candidate/domain/entities/add_education_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_education_entity.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UpdateCandidateEducationPage extends HookWidget {
  final GetEducationEntity entity;
  const UpdateCandidateEducationPage({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final schoolNameController = useTextEditingController(text: entity.title);
    final courseNamCeontroller = useTextEditingController(text: entity.purpose);
    final yearController = useTextEditingController(text: entity.year);
    final certificateController = useTextEditingController(text: entity.degree);
    final formKey = useMemoized(GlobalKey<FormState>.new);

    return Scaffold(
      appBar: CustomAppBar(
        titleStatus: false,
        title: 'Update Education',
      ),
      body: BlocListener<CandidatesBloc, CandidatesState>(
        listener: (context, state) {
          if (state.updateEducationState == ViewState.success) {
            Navigator.pushNamed(
              context,
              AppRoutes.successScreen2,
              arguments: {
                'message': 'Updated Successfully',
                'onTap': () {
                  Navigator.pushNamedAndRemoveUntil(context,
                      AppRoutes.jobSeekerNavBarScreen, (router) => false);
                  // Navigator.pushNamed(
                  //   context,
                  //   AppRoutes.jobSeekerNavBarScreen,
                  // );
                },
              },
            );
          } else if (state.updateEducationState == ViewState.failure) {
            ToastUtils.showRedToast(state.errorMessage ?? '');
          }
        },
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
            ),
            child: Column(
              children: [
                SizedBox(height: 25.v),
                SizedBox(height: 25.v),
                BlocBuilder<CandidatesBloc, CandidatesState>(
                  builder: (context, state) {
                    return CustomDropDown<String>(
                      title: "Educational Qualification",
                      items: state.educationQuaificationList,
                      selectedItem: state.educationQuaification,
                      itemLabel: (gender) => gender,
                      onChanged: (value) {
                        context.read<CandidatesBloc>().add(
                              CandidatesEvent.updateEducationQualification(
                                  value ?? ''),
                            );
                        print('ssss ${value}');
                      },
                    );
                  },
                ),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  title: "School Name",
                  controller: schoolNameController,
                  hintText: "School Name",
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.name,
                  //  validator: FormValidation.stringValidation,
                ),
                SizedBox(height: 25.v),
                BlocBuilder<CandidatesBloc, CandidatesState>(
                  builder: (context, state) {
                    if (state.educationQuaification == "Primary School" ||
                        state.educationQuaification ==
                            "Secondary/High School") {
                      return SizedBox();
                    } else {
                      return Column(
                        children: [
                          CustomTextFormField(
                            title: 'Course Name',
                            controller: courseNamCeontroller,
                            hintText: "Course Name",
                            hintStyle: theme.textTheme.titleSmall!,
                            textInputType: TextInputType.name,
                            //   validator: FormValidation.stringValidation,
                          ),
                          SizedBox(height: 25.v),
                        ],
                      );
                    }
                  },
                ),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  title: 'Year',
                  controller: yearController,
                  hintText: "Year",
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.number,
                  //   validator: FormValidation.stringValidation,
                ),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  title: 'Certificate Obtained Eg Hnd, Bsc, Diploma etc',
                  controller: certificateController,
                  hintText: "Certificate Obtained Eg Hnd, Bsc, Diploma etc",
                  textInputType: TextInputType.name,
                  hintStyle: theme.textTheme.titleSmall!,
                  //   validator: FormValidation.stringValidation,
                ),
                SizedBox(height: 50.v),
                BlocBuilder<CandidatesBloc, CandidatesState>(
                  builder: (context, state) {
                    return CustomElevatedButton(
                      isBusy: state.updateEducationState == ViewState.loading,
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          context.read<CandidatesBloc>().add(
                                CandidatesEvent.updateEducation(
                                  AddEducationEntity(
                                      userId: entity.userId,
                                      courseName: courseNamCeontroller.text,
                                      degree: certificateController.text,
                                      identity: entity.identity,
                                      schoolName: schoolNameController.text,
                                      year: yearController.text),
                                ),
                              );
                        }
                      },
                      text: "Submit",
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
