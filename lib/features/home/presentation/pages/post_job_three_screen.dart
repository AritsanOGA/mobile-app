import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/utils/text_formatter.dart';
import 'package:artisan_oga/features/authentication/domain/entities/country_response_enitity.dart';
import 'package:artisan_oga/features/authentication/domain/entities/state_response_entity.dart';
import 'package:artisan_oga/features/home/domain/entities/post_job_entity.dart';
import 'package:artisan_oga/features/home/presentation/bloc/home_bloc.dart';
import 'package:artisan_oga/features/home/presentation/pages/post_job_four_screen.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:page_transition/page_transition.dart';

class PostJobThreeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final minSalaryController = useTextEditingController();
    final maxSalaryController = useTextEditingController();
    final applicationDeadlineController = useTextEditingController();
    final yearsOfExperienceController = useTextEditingController();
    useEffect(() {
      context.read<HomeBloc>().add(HomeEvent.getCountries());
    }, []);
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            body: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 38.v),
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowLeftOnprimary,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.symmetric(vertical: 2.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text("Back",
                                        style: CustomTextStyles
                                            .titleMediumOnPrimary))
                              ])),
                          SizedBox(height: 40.v),
                          CustomTextFormField(
                            title: 'Proposed Minimum Salary',
                            titleStyle: CustomTextStyles.titleMediumMedium18,
                            hintText: 'Enter Minimum Salary',
                            isBorderNone: true,
                            controller: minSalaryController,
                          ),
                          SizedBox(height: 30.v),
                          CustomTextFormField(
                            title: 'Proposed Maximum Salary',
                            titleStyle: CustomTextStyles.titleMediumMedium18,
                            hintText: 'Enter Maximum Salary',
                            isBorderNone: true,
                            controller: maxSalaryController,
                          ),
                          SizedBox(height: 30.v),
                          CustomTextFormField(
                            hintText: 'Enter Deadline Date',
                            titleStyle: CustomTextStyles.titleMediumMedium18,
                            isBorderNone: true,
                            title: 'Application Deadline Date',
                            inputFormatters: [DateInputFormatter2()],
                            controller: applicationDeadlineController,
                          ),
                          SizedBox(height: 30.v),
                          CustomTextFormField(
                            hintText: 'Years of Experience',
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
                              titleStyle: CustomTextStyles.titleMediumMedium18,
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
                                itemLabel: (state) => state.name,
                                onChanged: (value) {
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updateState(value!),
                                      );
                                },
                              );
                            },
                          ),
                          SizedBox(height: 40.v),
                          BlocSelector<HomeBloc, HomeState, PostJobEntity>(
                            selector: (state) {
                              return state.postJobRequest;
                            },
                            builder: (context, postJobRequest) {
                              return CustomElevatedButton(
                                onPressed: (() {
                                  print(maxSalaryController.text);
                                  print(
                                      'hello ${int.parse(maxSalaryController.text)}');
                                  print(
                                      '${state.country?.name} ${state.state?.name} ');
                                  context.read<HomeBloc>().add(
                                        HomeEvent.updatePostJobRequest(
                                          postJobRequest.copyWith(
                                              maxAmount: int.parse(
                                                  maxSalaryController.text),
                                              minAmount: int.parse(
                                                  minSalaryController.text),
                                              applicationDeadline:
                                                  applicationDeadlineController
                                                      .text,
                                              country:
                                                  state.country?.id.toString(),
                                              yearsOfExperience: int.parse(
                                                  yearsOfExperienceController
                                                      .text),
                                              state: state.state?.name),
                                        ),
                                      );

                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          duration: Durations.long1,
                                          child: PostJobFourScreen()));
                                }),
                                text: "Next",
                              );
                            },
                          ),
                          SizedBox(height: 20.v)
                        ])));
              },
            )));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
