import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/candidate_search_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/hire_me_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HireMePage extends HookWidget {
  final CandidateSearchEntity candidateSearch;
  const HireMePage({super.key, required this.candidateSearch});

  @override
  Widget build(BuildContext context) {
    final candidateFullNameController =
        useTextEditingController(text: candidateSearch.fullName);
    final emailController = useTextEditingController();
    final fullNamCeontroller = useTextEditingController();
    final phoneController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    return Scaffold(
      appBar: CustomAppBar(
        titleStatus: false,
        title: 'Candidate Request Form',
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.hireMeState == ViewState.success) {
            Navigator.pushNamed(
              context,
              AppRoutes.hireMeSuccessPage,
            );
          } else if (state.hireMeState == ViewState.failure) {
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
                  readOnly: true,
                  title: "Candidate's Name",
                  controller: candidateFullNameController,
                  hintText: "example@gmail.com",
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.emailAddress,
                  //  validator: FormValidation.validateFullName,
                ),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  title: 'Full Name',
                  controller: fullNamCeontroller,
                  hintText: "Enter your Full Name",
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.name,
                  validator: FormValidation.validateFullName,
                ),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  title: 'Email',
                  controller: emailController,
                  hintText: "Enter your Email",
                  hintStyle: theme.textTheme.titleSmall!,
                  textInputType: TextInputType.emailAddress,
                  validator: FormValidation.emailValidation,
                ),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  title: 'Phone',
                  controller: phoneController,
                  hintText: "Enter your Phone",
                  textInputType: TextInputType.phone,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(11),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  hintStyle: theme.textTheme.titleSmall!,
                  validator: FormValidation.phoneValidation,
                ),
                SizedBox(height: 50.v),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return CustomElevatedButton(
                      isBusy: state.hireMeState == ViewState.loading,
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          context.read<AuthBloc>().add(
                                AuthEvent.hireMe(
                                  HireMeEntity(
                                      candidateIdentity:
                                          candidateSearch.identity,
                                      candidatePhone: '09042628899',
                                      employerEmail: emailController.text,
                                      employerPhone: phoneController.text,
                                      fullName: fullNamCeontroller.text),
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
