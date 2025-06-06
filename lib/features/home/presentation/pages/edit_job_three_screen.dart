import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/text_formatter.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/edit_job_four_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:page_transition/page_transition.dart';

class EditPostJobThreeScreen extends HookWidget {
  final String compensationType;

  EditPostJobThreeScreen({super.key, required this.compensationType});
  @override
  Widget build(BuildContext context) {
    final minSalaryController = useTextEditingController();
    final maxSalaryController = useTextEditingController();
    final applicationDeadlineController = useTextEditingController();
    final yearsOfExperienceController = useTextEditingController();
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
              title: '',
            ),
            backgroundColor: AppColors.kwhite,
            body: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Form(
                  key: formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 22.h,
                      ),
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            compensationType == 'Salary'
                                ? Column(
                                    children: [
                                      CustomFormattedTextFormField(
                                        title: 'Proposed Minimum Salary',
                                        textInputType: TextInputType.number,
                                        titleStyle: CustomTextStyles
                                            .titleMediumMedium18,
                                        validator:
                                            FormValidation.stringValidation,
                                        hintText: 'Enter Minimum Salary',
                                        isBorderNone: true,
                                        controller: minSalaryController,
                                      ),
                                      SizedBox(height: 30.v),
                                      CustomFormattedTextFormField(
                                        textInputType: TextInputType.number,
                                        title: 'Proposed Maximum Salary',
                                        titleStyle: CustomTextStyles
                                            .titleMediumMedium18,
                                        validator:
                                            FormValidation.stringValidation,
                                        hintText: 'Enter Maximum Salary',
                                        isBorderNone: true,
                                        controller: maxSalaryController,
                                      ),
                                      SizedBox(height: 30.v),
                                    ],
                                  )
                                : SizedBox(),
                            CustomTextFormField(
                              ontap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2100),
                                );
                                applicationDeadlineController.text =
                                    "${pickedDate!.year}-${pickedDate.month}-${pickedDate.day}";

                                context.read<HomeBloc>().add(
                                    HomeEvent.updateSelectedDate(pickedDate));
                              },
                              hintText: 'YYYY-MM-DD',
                              titleStyle: CustomTextStyles.titleMediumMedium18,
                              validator: FormValidation.stringValidation,
                              isBorderNone: true,
                              readOnly: true,
                              title: 'Application Deadline Date',
                              controller: applicationDeadlineController,
                            ),
                            SizedBox(height: 30.v),
                            CustomTextFormField(
                              hintText: 'Years of Experience',
                              validator: FormValidation.stringValidation,
                              titleStyle: CustomTextStyles.titleMediumMedium18,
                              isBorderNone: true,
                              title: 'Enter Years of Experience',
                              inputFormatters: [DateInputFormatter2()],
                              controller: yearsOfExperienceController,
                            ),
                            SizedBox(height: 30.v),
                            BlocBuilder<HomeBloc, HomeState>(
                                builder: (context, state) {
                              return CustomDropDown<CountryResponseEntity>(
                                title: 'Country',
                                isBorderNone: true,
                                titleStyle:
                                    CustomTextStyles.titleMediumMedium18,
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
                            BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                return CustomDropDown<StateResponseEntity>(
                                  title: 'State',
                                  isBorderNone: true,
                                  titleStyle:
                                      CustomTextStyles.titleMediumMedium18,
                                  items: state.states,
                                  selectedItem: state.states.isNotEmpty
                                      ? state.states.firstWhere(
                                          (state) => state.id == (state.id),
                                          orElse: () => state.states.first)
                                      : StateResponseEntity(
                                          id: 1098, name: 'Djelfa'),
                                  itemLabel: (state) => state.name!,
                                  onChanged: (value) {
                                    context.read<HomeBloc>().add(
                                          HomeEvent.updateState(value!),
                                        );
                                  },
                                );
                              },
                            ),
                            compensationType == 'Salary'
                                ? SizedBox(height: 40.v)
                                : SizedBox(
                                    height: 80,
                                  ),
                            BlocSelector<HomeBloc, HomeState, PostJobEntity>(
                              selector: (state) {
                                return state.postJobRequest;
                              },
                              builder: (context, postJobRequest) {
                                return CustomElevatedButton(
                                  onPressed: (() {
                                    if (formKey.currentState?.validate() ??
                                        false) {
                                      compensationType == 'Salary'
                                          ? context.read<HomeBloc>().add(
                                                HomeEvent.updatePostJobRequest(
                                                  postJobRequest.copyWith(
                                                    maxAmount: int.parse(
                                                        maxSalaryController.text
                                                            .replaceAll(
                                                                ',', '')),
                                                    minAmount: int.parse(
                                                        minSalaryController.text
                                                            .replaceAll(
                                                                ',', '')),
                                                    applicationDeadline:
                                                        applicationDeadlineController
                                                            .text,
                                                    country: state.country?.id
                                                            .toString() ??
                                                        '161',
                                                    yearsOfExperience: int.parse(
                                                        yearsOfExperienceController
                                                            .text),
                                                    state: state.state?.name ??
                                                        state.states.first.name,
                                                  ),
                                                ),
                                              )
                                          : context.read<HomeBloc>().add(
                                                HomeEvent.updatePostJobRequest(
                                                  postJobRequest.copyWith(
                                                    applicationDeadline:
                                                        applicationDeadlineController
                                                            .text,
                                                    country: state.country?.id
                                                            .toString() ??
                                                        '161',
                                                    yearsOfExperience: int.parse(
                                                        yearsOfExperienceController
                                                            .text),
                                                    state: state.state?.name ??
                                                        state.states.first.name,
                                                  ),
                                                ),
                                              );
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType
                                                  .rightToLeft,
                                              duration: Durations.long1,
                                              child: EditPostJobFourScreen()));
                                    }
                                  }),
                                  text: "Next",
                                );
                              },
                            ),
                            SizedBox(height: 40.v)
                          ]))),
                );
              },
            )));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
