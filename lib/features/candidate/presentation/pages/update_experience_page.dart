import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/candidate/domain/entities/get_experience_entity.dart';
import 'package:artisan_oga/features/candidate/domain/entities/update_experience_entity.dart';
import 'package:artisan_oga/features/candidate/presentation/bloc/bloc/candidates_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UpdateCandidateExperiencePage extends HookWidget {
  final GetExperienceEntity entity;
  const UpdateCandidateExperiencePage({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final employerNameController = useTextEditingController(text: entity.title);
    final roleCeontroller = useTextEditingController(text: entity.purpose);
    final startYearController =
        useTextEditingController(text: entity.startYear.toString());
    final endYearController = useTextEditingController(text: entity.yearEnd);
    final phoneCeontroller = useTextEditingController();
    final ighandleController = useTextEditingController();
    final descriptionController =
        useTextEditingController(text: entity.description);
    final formKey = useMemoized(GlobalKey<FormState>.new);

    useEffect(() {
      context.read<AuthBloc>().add(const AuthEvent.getUserData());
      return null;
    }, []);

    return Scaffold(
      appBar: CustomAppBar(
        titleStatus: false,
        title: 'Update Experience',
      ),
      body: BlocListener<CandidatesBloc, CandidatesState>(
        listener: (context, state) {
          if (state.updateExperienceState == ViewState.success) {
            Navigator.pushNamed(
              context,
              AppRoutes.successScreen2,
              arguments: {
                'message': 'Uploaded Successfully',
                'onTap': () {
                  // Navigator.pop(context);
                  // Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    AppRoutes.jobSeekerNavBarScreen,
                  );
                },
              },
            );
          } else if (state.updateExperienceState == ViewState.failure) {
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
                CustomTextFormField(
                  title: "Employer Name",
                  controller: employerNameController,
                  hintText: "Employer Name",
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  title: 'Role',
                  controller: roleCeontroller,
                  hintText: "Role",
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.name,
                ),
                SizedBox(height: 25.v),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        title: 'Start Year',
                        controller: startYearController,
                        hintText: "Start Year",
                        hintStyle: theme.textTheme.titleSmall!,
                        textInputType: TextInputType.number,
                      ),
                    ),
                    SizedBox(height: 25.v),
                    Expanded(
                      child: CustomTextFormField(
                        title: 'End year',
                        controller: endYearController,
                        hintText: "End year",
                        hintStyle: theme.textTheme.titleSmall!,
                        textInputType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.v),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        title: 'Phone',
                        controller: phoneCeontroller,
                        hintText: "Phone",
                        hintStyle: theme.textTheme.titleSmall!,
                        textInputType: TextInputType.number,
                      ),
                    ),
                    SizedBox(height: 25.v),
                    Expanded(
                      child: CustomTextFormField(
                        title: 'I.G Handle',
                        controller: ighandleController,
                        hintText: "I.G Handle",
                        hintStyle: theme.textTheme.titleSmall!,
                        textInputType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  title: 'Description',
                  maxLines: 4,
                  controller: descriptionController,
                  hintText: "Start Description",
                  textInputType: TextInputType.name,
                  hintStyle: theme.textTheme.titleSmall!,
                ),
                SizedBox(height: 50.v),
                BlocBuilder<CandidatesBloc, CandidatesState>(
                  builder: (context, state) {
                    return CustomElevatedButton(
                      isBusy: state.updateExperienceState == ViewState.loading,
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          context.read<CandidatesBloc>().add(
                                CandidatesEvent.updateExperience(
                                  UpdateExperienceEntity(
                                      title: employerNameController.text,
                                      role: roleCeontroller.text,
                                      endYear: endYearController.text,
                                      startYear: startYearController.text,
                                      description: descriptionController.text,
                                      identity: entity.identity),
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
