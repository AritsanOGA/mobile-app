import 'package:artisan_oga/core/app_constants/app_colors.dart';

import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_employer_entity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';

import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore_for_file: must_be_immutable
class EmployerSignuppageOneScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final fullNameController = useTextEditingController();

    final cityController = useTextEditingController();
    final officeTitleController = useTextEditingController();
    final phoneController = useTextEditingController();
    final companyNameController = useTextEditingController();
    final authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocProvider(
      create: (context) => AuthBloc()
        ..add(
          const AuthEvent.getCountries(),
        ),
      child: SafeArea(
          child: Scaffold(
              backgroundColor: AppColors.kwhite,
              appBar: CustomAppBar(
                title: 'Register',
              ),
              body: SingleChildScrollView(
                  child: Container(
                      width: double.maxFinite,
                      //  height: double.maxFinite,
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
                            title: 'First Name',
                            controller: fullNameController,
                            hintText: "eg: Kingsley ",
                            hintStyle: theme.textTheme.titleSmall!),
                        SizedBox(height: 30.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextFormField(
                                title: 'Office Title',
                                width: 180.h,
                                controller: officeTitleController,
                                hintText: "e.g CEO",
                                hintStyle: theme.textTheme.titleSmall!),
                            CustomTextFormField(
                                title: 'Company Name',
                                width: 180.h,
                                controller: companyNameController,
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
                                  if (state.viewState == ViewState.loading) {
                                    return CircularProgressIndicator();
                                  } else if (state.viewState ==
                                      ViewState.success) {
                                    return CustomDropDown<
                                        CountryResponseEntity>(
                                      title: 'Country',
                                      items: state.countries,
                                      selectedItem: state.countries.firstWhere(
                                        (country) =>
                                            country.id ==
                                            (state.country?.id ?? 4),
                                        orElse: () => CountryResponseEntity(
                                            id: 4, name: 'ALgeria'),
                                      ),
                                      itemLabel: (country) => country.name,
                                      onChanged: (value) {
                                        context.read<AuthBloc>().add(
                                              AuthEvent.updateSelectedCountry(
                                                  value!),
                                            );
                                        print('iddd${value.id.toString()}');
                                        context.read<AuthBloc>().add(
                                              AuthEvent.getState(
                                                  value.id.toString()),
                                            );
                                      },
                                    );
                                  }
                                  return Center(
                                    child: Text('Unexpected state encountered'),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: 20.v),
                            Expanded(
                              child: BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return CustomDropDown<String>(
                                    title: 'Gender',
                                    items: authBloc.genders,
                                    selectedItem: authBloc.selectedGender,
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
                              child: CustomTextFormField(
                                  title: 'Phone no',
                                  controller: phoneController,
                                  hintText: "eg  09033447788",
                                  hintStyle: theme.textTheme.titleSmall!),
                            ),
                            SizedBox(width: 20.v),
                            Expanded(
                              child: BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  if (state.viewState == ViewState.loading) {
                                    return CircularProgressIndicator();
                                  } else if (state.viewState ==
                                      ViewState.success) {
                                    return CustomDropDown<StateResponseEntity>(
                                      title: 'State',
                                      items: state.states,
                                      selectedItem: state.states.firstWhere(
                                        (state) => state.id == (state.id),
                                        orElse: () => StateResponseEntity(
                                            id: 4, name: 'ALgeria'),
                                      ),
                                      itemLabel: (state) => state.name,
                                      onChanged: (value) {
                                        context.read<AuthBloc>().add(
                                              AuthEvent.updateSelectedState(
                                                  value!),
                                            );
                                      },
                                    );
                                  }
                                  return Center(
                                    child: Text('Unexpected state encountered'),
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
                                      print('state ${state.isChecked}');
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
                                          ? Icon(
                                              Icons.check,
                                              color: Colors.white,
                                              size: 20,
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
                        BlocConsumer<AuthBloc, AuthState>(
                          listener: (context, state) {
                            if (state.viewState == ViewState.success) {
                              Navigator.pushNamed(
                                  context, AppRoutes.verifyEmployerScreen);
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => HomeScreen(),
                              //   ),
                              // );
                            } else if (state.viewState == ViewState.failure) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        state.errorMessage ?? 'Login failed')),
                              );
                            }
                          },
                          builder: (context, state) {
                            return CustomElevatedButton(
                              text: "Submit",
                              onPressed: (() {
                                debugPrint(
                                    'state ${state.country?.name}  ${state.state?.name} ${state.file} ${fullNameController.text} ');
                                context.read<AuthBloc>().add(
                                      AuthEvent.registerEmployer(
                                        state.registerEmployerRequest.copyWith(
                                          fullName: fullNameController.text,
                                          officeTitle:
                                              officeTitleController.text,
                                          companyName:
                                              companyNameController.text,
                                          state: state.state?.name ?? '',
                                          city: cityController.text,
                                          companyLogo: state.file!,
                                          gender: state.gender ?? '',
                                          country: state.country?.name ?? '',
                                          phoneNumber: phoneController.text,
                                        ),
                                      ),
                                    );
                              }),
                            );
                          },
                        ),
                      ]))))),
    );
  }
}
