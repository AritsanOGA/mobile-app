import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_without_login_entity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PostJobWithoutLoginTwoScreen extends HookWidget {
  @override
  @override
  Widget build(BuildContext context) {
    final officeAddressController = useTextEditingController();
    final companyNameController = useTextEditingController();
    final cityController = useTextEditingController();
    final fullNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneNoController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final formKey = useMemoized(GlobalKey<FormState>.new);
    useEffect(() {
      context.read<HomeBloc>().add(HomeEvent.getCountries());
      context.read<HomeBloc>().add(HomeEvent.getState('161'));
      return null;
    }, []);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
              titleStatus: false,
              //hasBackButton: false,

              title: '',
            ),
            backgroundColor: AppColors.kwhite,
            body: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Form(
                  key: formKey,
                  child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.h,
                      ),
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            SizedBox(height: 25.v),
                            BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                return CustomDropDown<String>(
                                  title: 'Compensation Type',
                                  items: state.compensationTypeLists,
                                  selectedItem: state.compensationTypes,
                                  itemLabel: (category) => category,
                                  onChanged: (value) {
                                    context.read<HomeBloc>().add(
                                          HomeEvent
                                              .updateSelectedCompensationTypes(
                                                  value ?? ''),
                                        );
                                    print('${value}');
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 25.v),
                            BlocBuilder<HomeBloc, HomeState>(
                                builder: (context, state) {
                              return CustomDropDown<CountryResponseEntity>(
                                title: 'Country',
                                items: state.countries,
                                selectedItem: state.countries.isNotEmpty
                                    ? state.countries.firstWhere(
                                        (country) =>
                                            country.id == (state.country?.id),
                                        orElse: () => state.countries.first)
                                    : CountryResponseEntity(
                                        id: 4,
                                        name: 'Algeria',
                                      ),
                                itemLabel: (country) => country.name,
                                onChanged: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateCountry(value!),
                                      );

                                  context.read<HomeBloc>().add(
                                        HomeEvent.getState(value.id.toString()),
                                      );
                                },
                              );
                            }),
                            SizedBox(height: 30.v),
                            Row(
                              children: [
                                BlocBuilder<HomeBloc, HomeState>(
                                  builder: (context, state) {
                                    return Expanded(
                                      child:
                                          CustomDropDown<StateResponseEntity>(
                                        title: 'State',
                                        items: state.states,
                                        selectedItem: state.states.isNotEmpty
                                            ? state.states.firstWhere(
                                                (state) =>
                                                    state.id == (state.id),
                                                orElse: () =>
                                                    state.states.first)
                                            : StateResponseEntity(
                                                id: 1098, name: 'Djelfa'),
                                        itemLabel: (state) => state.name!,
                                        onChanged: (value) {
                                          context.read<HomeBloc>().add(
                                                HomeEvent.updateState(value!),
                                              );
                                        },
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(width: 20.h),
                                Expanded(
                                  child: CustomTextFormField(
                                    title: 'Area',
                                    validator: FormValidation.stringValidation,
                                    controller: cityController,
                                    hintText: 'Enter Area',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30.v),
                            CustomTextFormField(
                              controller: companyNameController,
                              title: 'Company Name',
                              validator: FormValidation.stringValidation,
                              hintText: 'Enter Company Name',
                            ),
                            SizedBox(height: 30.v),
                            CustomTextFormField(
                              controller: officeAddressController,
                              title: 'Office Address',
                              validator: FormValidation.stringValidation,
                              hintText: 'Enter Office Address',
                            ),
                            SizedBox(height: 30.v),
                            BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                return CustomDropDown<String>(
                                  title: 'Is Accommodation Available?',
                                  items: state.availabilityLists,
                                  selectedItem: state.availablitys,
                                  itemLabel: (category) => category,
                                  onChanged: (value) {
                                    context.read<HomeBloc>().add(
                                          HomeEvent.updateSelectedAvailability(
                                              value ?? ''),
                                        );
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 25.v),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    title: 'Full Name',
                                    validator: FormValidation.validateFullName,
                                    controller: fullNameController,
                                    hintText: 'Enter Full Name',
                                  ),
                                ),
                                SizedBox(width: 20.h),
                                Expanded(
                                  child: CustomTextFormField(
                                    title: 'Phone Number',
                                    textInputType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(11),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    validator: FormValidation.stringValidation,
                                    controller: phoneNoController,
                                    hintText: 'Enter Phone Number',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25.v),
                            CustomTextFormField(
                              controller: emailController,
                              title: 'Email',
                              validator: FormValidation.emailValidation,
                              hintText: 'Enter Email  Address',
                            ),
                            SizedBox(height: 25.v),
                            CustomTextFormField(
                              controller: descriptionController,
                              title: 'Description',
                              hintText: 'Enter description',
                              maxLines: 4,
                            ),
                            SizedBox(height: 40.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: 350.h,
                                    margin:
                                        EdgeInsets.only(left: 2.h, right: 12.h),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  "By posting this job, you agree to our",
                                              style: CustomTextStyles
                                                  .bodyMediumff3a332c),
                                          TextSpan(text: " "),
                                          TextSpan(
                                              text:
                                                  " Recruitment Terms of Service.",
                                              style: CustomTextStyles
                                                  .titleSmallfff7941e_1),
                                        ]),
                                        textAlign: TextAlign.left))),
                            SizedBox(height: 40.v),
                            BlocSelector<HomeBloc, HomeState,
                                PostJobWithoutLoginEntity>(
                              selector: (state) {
                                return state.postJobWithoutLoginRequest;
                              },
                              builder: (context, postJobWithoutLoginRequest) {
                                return CustomElevatedButton(
                                  isBusy: state.postJobWithoutLoginState ==
                                      ViewState.loading,
                                  onPressed: (() {
                                    if (formKey.currentState?.validate() ??
                                        false) {
                                      print(
                                          '${state.workMode} ${state.jobType} ${cityController.text} ${state.compensationTypes}');
                                      context.read<HomeBloc>().add(
                                            HomeEvent.postJobWithoutLogin(
                                              postJobWithoutLoginRequest.copyWith(
                                                  fullname:
                                                      fullNameController.text,
                                                  jobDescription:
                                                      descriptionController
                                                          .text,
                                                  email: emailController.text,
                                                  phoneNumber:
                                                      phoneNoController.text,
                                                  country: state.country?.id
                                                          .toString() ??
                                                      '161',
                                                  state: state.state?.name ??
                                                      state.states.first.name,
                                                  companyName: companyNameController.text,
                                                  city: cityController.text,
                                                  officeAddress:
                                                      officeAddressController
                                                          .text,
                                                  available: state.availablity,
                                                  compensationType:
                                                      state.compensationTypes),
                                            ),
                                          );
                                    }
                                  }),
                                  text: "Next",
                                );
                              },
                            ),
                            SizedBox(height: 40.v),
                          ]))),
                );
              },
            )));
  }
}
