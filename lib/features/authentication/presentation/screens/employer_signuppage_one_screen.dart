import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EmployerSignuppageOneScreen extends HookWidget {
  final String email;

  EmployerSignuppageOneScreen({super.key, required this.email});
  @override
  Widget build(BuildContext context) {
    final fullNameController = useTextEditingController();
    final cityController = useTextEditingController();
    final officeTitleController = useTextEditingController();
    final phoneController = useTextEditingController();
    final companyNameController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);

    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: 'Register',
            ),
            body: BlocListener<AuthBloc, AuthState>(
                bloc: context.read<AuthBloc>()
                  ..add(AuthEvent.getCountries())
                  ..add(AuthEvent.getState('161')),
                listener: (context, state) {
                  if (state.employerSignUpState ==
                      EmployerSignUpState.success) {
                    Navigator.pushNamed(context, AppRoutes.verifyEmployerScreen,
                        arguments: email);
                  } else if (state.employerSignUpState ==
                      EmployerSignUpState.failure) {
                    ToastUtils.showRedToast(state.errorMessage ?? '');
                  }
                },
                child: SingleChildScrollView(
                    child: Form(
                  key: formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 12.v),
                      child: Column(children: [
                        Container(
                            width: 327.h,
                            margin: EdgeInsets.symmetric(horizontal: 26.h),
                            child: Text(
                                "Your personal data is safe with us, and no one else will be able to see it.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyMedium)),
                        SizedBox(height: 35.v),
                        CustomTextFormField(
                            title: 'Full Name',
                            controller: fullNameController,
                            hintText: "eg: Kingsley Adam ",
                            textInputType: TextInputType.name,
                            validator: FormValidation.stringValidation,
                            hintStyle: theme.textTheme.titleSmall!),
                        SizedBox(height: 30.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextFormField(
                                title: 'Office Title',
                                width: 180.h,
                                controller: officeTitleController,
                                textInputType: TextInputType.name,
                                hintText: "e.g CEO",
                                validator: FormValidation.stringValidation,
                                hintStyle: theme.textTheme.titleSmall!),
                            CustomTextFormField(
                                title: 'Company Name',
                                width: 180.h,
                                textInputType: TextInputType.name,
                                controller: companyNameController,
                                validator: FormValidation.stringValidation,
                                hintText: "e.g ArtisanOga",
                                hintStyle: theme.textTheme.titleSmall!)
                          ],
                        ),
                        SizedBox(height: 30.v),
                        Row(
                          children: [
                            Expanded(
                              child: BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return CustomDropDown<CountryResponseEntity>(
                                    title: 'Country',
                                    items: state.countries,
                                    selectedItem: state.countries.firstWhere(
                                      (country) =>
                                          country.id ==
                                          (state.country?.id ?? 161),
                                      orElse: () => CountryResponseEntity(
                                          id: 161, name: 'Nigeria'),
                                    ),
                                    itemLabel: (country) => country.name,
                                    onChanged: (value) {
                                      context.read<AuthBloc>().add(
                                            AuthEvent.updateSelectedCountry(
                                                value!),
                                          );

                                      context.read<AuthBloc>().add(
                                            AuthEvent.getState(
                                                value.id.toString()),
                                          );
                                      print('statelist ${state.states}');
                                    },
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 20.v),
                            Expanded(
                              child: BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return CustomDropDown<StateResponseEntity>(
                                    title: 'State',
                                    items: state.states,
                                    selectedItem: state.states.firstWhere(
                                      (state) => state.id == (state.id),
                                      orElse: () => StateResponseEntity(
                                          id: 0, name: '-Select'),
                                    ),
                                    itemLabel: (state) => state.name!,
                                    onChanged: (value) {
                                      context.read<AuthBloc>().add(
                                            AuthEvent.updateSelectedState(
                                                value!),
                                          );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.v),
                        Row(
                          children: [
                            BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                return Expanded(
                                  child: Column(
                                    children: [
                                      CustomTextFormField(
                                          onChanged: (value) {
                                            context.read<AuthBloc>().add(
                                                AuthEvent.checkPhone(value));
                                          },
                                          title: 'Phone no',
                                          textInputType: TextInputType.phone,
                                          controller: phoneController,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(
                                                11),
                                            FilteringTextInputFormatter
                                                .digitsOnly,
                                          ],
                                          validator:
                                              FormValidation.phoneValidation,
                                          hintText: "eg 09033447788",
                                          hintStyle:
                                              theme.textTheme.titleSmall!),
                                      AnimatedSwitcher(
                                        duration: Duration(milliseconds: 200),
                                        child: state.isPhone == true
                                            ? Text(
                                                'This phone number has already been used',
                                                key: ValueKey('error'),
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12),
                                              )
                                            : SizedBox(
                                                height: 0,
                                                key: ValueKey(
                                                    'empty')), // Reserve height
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            SizedBox(width: 20.v),
                            Expanded(
                              child: BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return CustomDropDown<String>(
                                    title: 'Gender',
                                    items: state.genders,
                                    selectedItem: state.gender,
                                    itemLabel: (gender) => gender,
                                    onChanged: (value) {
                                      context.read<AuthBloc>().add(
                                            AuthEvent.updateSelectedGender(
                                                value ?? ''),
                                          );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.v),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Upload Company Logo",
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 7.v),
                                  BlocBuilder<AuthBloc, AuthState>(
                                    builder: (context, state) {
                                      return Container(
                                          margin: EdgeInsets.only(right: 10.h),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8.v, horizontal: 5.v),
                                          decoration: AppDecoration
                                              .outlineBlueGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      context
                                                          .read<AuthBloc>()
                                                          .add(const AuthEvent
                                                              .selectCompanyLogo());
                                                    },
                                                    child: Container(
                                                        height: 30,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            color: ColorSchemes
                                                                .primaryColorScheme
                                                                .primary),
                                                        child: Center(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        5),
                                                            child: Text(
                                                                'choose file',
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium
                                                                    ?.copyWith(
                                                                        color: Colors
                                                                            .white)),
                                                          ),
                                                        ))),
                                                SizedBox(width: 5.v),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 5.v, right: 5.v),
                                                  child: Text(
                                                      state.file == null
                                                          ? "No file chosen"
                                                          : "Image selected",
                                                      style: theme.textTheme
                                                          .labelLarge),
                                                )
                                              ]));
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextFormField(
                                      title: 'City',
                                      controller: cityController,
                                      textInputType: TextInputType.name,
                                      validator:
                                          FormValidation.stringValidation,
                                      hintText: "eg  Leo",
                                      hintStyle: theme.textTheme.titleSmall!),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.v),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return Align(
                                alignment: Alignment.centerLeft,
                                child: Row(children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.read<AuthBloc>()
                                        ..add(AuthEvent.updateSelectedIsChecked(
                                            state.isChecked));
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: state.isChecked
                                            ? theme.colorScheme.primary
                                            : AppColors.kwhite,
                                        border: Border.all(
                                            color: theme.colorScheme.primary,
                                            width: 2),
                                      ),
                                      child: state.isChecked
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 20, right: 15),
                                              child: Icon(
                                                Icons.check,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                            )
                                          : null,
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 11.h, top: 4.v, bottom: 2.v),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "I Agree With The",
                                                style: CustomTextStyles
                                                    .titleSmallff3a332c_1),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "Terms and Conditions",
                                                style: CustomTextStyles
                                                    .titleSmallfff7941e_1)
                                          ]),
                                          textAlign: TextAlign.left))
                                ]));
                          },
                        ),
                        SizedBox(height: 35.v),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return CustomElevatedButton(
                              isBusy: state.employerSignUpState ==
                                  EmployerSignUpState.loading,
                              text: "Submit",
                              onPressed: (() {
                                final isFormValid =
                                    formKey.currentState?.validate() ?? false;

                                if (!isFormValid) return;

                                if (state.isPhone == true) {
                                  ToastUtils.showRedToast(
                                      'This phone number has already been used');

                                  return;
                                }
                                context.read<AuthBloc>().add(
                                      AuthEvent.registerEmployer(
                                        state.registerEmployerRequest.copyWith(
                                          fullName: fullNameController.text,
                                          officeTitle:
                                              officeTitleController.text,
                                          companyName:
                                              companyNameController.text,
                                          state: state.state?.name ??
                                              state.states.first.name,
                                          city: cityController.text,
                                          companyLogo: state.file,
                                          gender: state.gender,
                                          country:
                                              state.country?.id.toString() ??
                                                  '161',
                                          phoneNumber: phoneController.text,
                                        ),
                                      ),
                                    );
                              }),
                            );
                          },
                        )
                      ])),
                )))));
  }
}
