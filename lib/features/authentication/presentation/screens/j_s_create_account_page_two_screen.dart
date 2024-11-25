import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_date_field.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'j_s_create_account_page_three_screen.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountPagetTwoScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final streetaddressController = useTextEditingController();
    final cityController = useTextEditingController();
    final dateOfBirthController = useTextEditingController();
    final phoneController = useTextEditingController();
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
                title: '',
              ),
              // resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 12.v),
                      child: Column(children: [
                        SizedBox(height: 10.v),
                        CustomTextFormField(
                            title: 'Phone Number',
                            controller: phoneController,
                            hintText: "e.g 703 345 1345",
                            hintStyle: theme.textTheme.titleSmall!),
                        SizedBox(height: 30.v),
                        CustomTextFormField(
                            title: 'Street Address',
                            controller: streetaddressController,
                            hintText: "Enter Street Address",
                            hintStyle: theme.textTheme.titleSmall!),
                        SizedBox(height: 30.v),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            if (state.viewState == ViewState.loading) {
                              return CircularProgressIndicator();
                            } else if (state.viewState == ViewState.success) {
                              return CustomDropDown<CountryResponseEntity>(
                                title: 'Country',
                                items: state.countries,
                                selectedItem: state.countries.firstWhere(
                                  (country) =>
                                      country.id == (state.country?.id ?? 4),
                                  orElse: () => CountryResponseEntity(
                                      id: 4, name: 'ALgeria'),
                                ),
                                itemLabel: (country) => country.name,
                                onChanged: (value) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.updateSelectedCountry(value!),
                                      );

                                  context.read<AuthBloc>().add(
                                        AuthEvent.getState(value.id.toString()),
                                      );
                                },
                              );
                            }
                            return Center(
                              child: Text('Unexpected state encountered'),
                            );
                          },
                        ),
                        SizedBox(height: 30.v),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            if (state.viewState == ViewState.loading) {
                              return CircularProgressIndicator();
                            } else if (state.viewState == ViewState.success) {
                              return CustomDropDown<StateResponseEntity>(
                                title: 'State of Residence',
                                items: state.states,
                                selectedItem: state.states.firstWhere(
                                  (state) => state.id == (state.id ?? 4),
                                  orElse: () => StateResponseEntity(
                                      id: 4, name: 'ALgeria'),
                                ),
                                itemLabel: (state) => state.name,
                                onChanged: (value) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.updateSelectedState(value!),
                                      );
                                },
                              );
                            }
                            return Center(
                              child: Text('Unexpected state encountered'),
                            );
                          },
                        ),
                        SizedBox(height: 30.v),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return CustomDropDown<String>(
                              title: 'Job Type',
                              items: authBloc.dropdownItemJobType,
                              selectedItem: authBloc.selectedJobType,
                              //  state.gender ?? "--Select--",
                              itemLabel: (gender) => gender,
                              onChanged: (value) {
                                context.read<AuthBloc>().add(
                                      AuthEvent.updateSelectedJobType(
                                          value ?? ''),
                                    );
                              },
                            );
                          },
                        ),
                        SizedBox(height: 30.v),
                        Row(
                          children: [
                            Expanded(
                                child: CustomDateFormField(
                              hint: authBloc.dateField.text,
                              onTap: () {
                                authBloc.datePicker(context);
                              },
                              label: 'Date of Birth',
                            )),
                            SizedBox(
                              width: 20.h,
                            ),
                            Expanded(
                              child: CustomTextFormField(
                                  title: 'City',
                                  controller: cityController,
                                  hintText: "Enter City",
                                  hintStyle: theme.textTheme.titleSmall!),
                            ),
                          ],
                        ),
                        SizedBox(height: 45.v),
                        CustomElevatedButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        JSCreateAccountPagetThreeScreen()));
                          }),
                          text: "Next",
                        ),
                      ]))))),
    );
  }
}
