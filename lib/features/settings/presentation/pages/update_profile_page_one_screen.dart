import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/core/utils/form_validator.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/settings/domain/entities/update_js_profile_entity.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_drop_down.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_icon_button.dart';
import 'package:artisan_oga/shared/widgets/custom_text_form_field.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ignore_for_file: must_be_immutable
class UpdateProfilePageOneScreen extends HookWidget {
  UpdateProfilePageOneScreen({Key? key}) : super(key: key);

  var imageUrl;
  @override
  Widget build(BuildContext context) {
    final fullNameEditTextController = useTextEditingController();
    final emailController = useTextEditingController();
    final phoneNoTextController = useTextEditingController();
    final dateOfBirthController = useTextEditingController();

    final formKey = useMemoized(GlobalKey<FormState>.new);

    useEffect(() {
      context.read<AuthBloc>().add(const AuthEvent.getUserData());

      return null;
    }, []);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.kwhite,
        appBar: CustomAppBar(
          title: 'Settings',
        ),
        body: BlocConsumer<SettingBloc, SettingState>(
          bloc: context.read<SettingBloc>()
            ..add(SettingEvent.getCandidateProfile(
                UserService().authData?.user.identity ?? '')),
          listener: (context, state) {
            if (state.getCandidateProfileState == ViewState.success) {
              final profile = state.candidateProfileEntity;

              if (profile != null) {
                fullNameEditTextController.text =
                    profile.profiles.fullName ?? '';
                emailController.text = profile.profiles.email ?? '';
                phoneNoTextController.text = profile.profiles.phone ?? '';
                imageUrl = profile.passport;
              }
            }
            if (state.updateJobSeekerProfileState ==
                UpdateJobSeekerProfileState.success) {
              ToastUtils.showGreenToast('Profile Update Successfully');
              Navigator.pushNamed(context, AppRoutes.employerNavBarScreen);
            }
            if (state.updateJobSeekerProfileState ==
                UpdateJobSeekerProfileState.failure) {
              ToastUtils.showRedToast('Something went wrong');
            }
          },
          builder: (context, state) {
            if (state.getCandidateProfileState == ViewState.loading) {
              return Center(child: CircularProgressIndicator());
            }

            if (state.getCandidateProfileState == ViewState.failure) {
              return Center(child: Text('Error: '));
            }

            if (state.getCandidateProfileState == ViewState.success) {
              final nameController = TextEditingController(
                  text: state.getEmployerResponseEntity?.fullName);
              final emailController = TextEditingController(
                  text: state.getEmployerResponseEntity?.companyName);
              final phoneController = TextEditingController(
                  text: state.getEmployerResponseEntity?.streetAddress);
            }
            return Form(
              key: formKey,
              child: SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Column(children: [
                            SizedBox(height: 16.v),
                            SizedBox(
                                height: 110.adaptSize,
                                width: 110.adaptSize,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      imageUrl != ''
                                          ? CachedNetworkImage(
                                              imageUrl:
                                                  '${state.candidateProfileEntity?.passport ?? ''}',
                                              fit: BoxFit.cover,
                                              progressIndicatorBuilder:
                                                  (context, url,
                                                          downloadProgress) =>
                                                      const Center(),
                                              imageBuilder:
                                                  (context, imageProvider) =>
                                                      Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: imageProvider,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            )
                                          : state.picture == null
                                              ? Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          width: 2,
                                                          color: AppColors
                                                              .kblack)),
                                                  child: Icon(
                                                    color: AppColors.kblack,
                                                    Icons.person,
                                                    size: 90,
                                                  ),
                                                )
                                              : Container(
                                                  width: 150,
                                                  height: 150,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: FileImage(
                                                          state.picture!),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                      GestureDetector(
                                        onTap: (() {
                                          context.read<SettingBloc>().add(
                                              const SettingEvent
                                                  .selectPicture());
                                        }),
                                        child: CustomIconButton(
                                            height: 40.adaptSize,
                                            width: 40.adaptSize,
                                            padding: EdgeInsets.all(7.h),
                                            decoration: IconButtonStyleHelper
                                                .fillPrimaryTL28,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                      )
                                    ])),
                            SizedBox(height: 25.v),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 25.h),
                                child: Column(children: [
                                  SizedBox(height: 16.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 3.h),
                                          child: Text("Upload Your CV",
                                              style:
                                                  theme.textTheme.bodyMedium))),
                                  SizedBox(height: 10.v),
                                  BlocBuilder<SettingBloc, SettingState>(
                                    builder: (context, state) {
                                      return Container(
                                          margin: EdgeInsets.only(right: 10.h),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 6.v, horizontal: 5.v),
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
                                                          .read<SettingBloc>()
                                                          .add(const SettingEvent
                                                              .selectResume());
                                                    },
                                                    child: Container(
                                                        height: 30,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.4)),
                                                        child: Center(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10),
                                                            child: Text(
                                                                'Choose File',
                                                                style: theme
                                                                    .textTheme
                                                                    .labelMedium
                                                                    ?.copyWith(
                                                                        color: const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            88,
                                                                            49,
                                                                            49))),
                                                          ),
                                                        ))),
                                                SizedBox(width: 5.v),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 5.v, right: 5.v),
                                                  child: Text(
                                                      state.resume == null
                                                          ? "No file chosen"
                                                          : "File selected",
                                                      style: theme.textTheme
                                                          .labelLarge),
                                                )
                                              ]));
                                    },
                                  ),
                                  SizedBox(height: 25.v),
                                  CustomTextFormField(
                                    title: 'Full Name',
                                    titleStyle:
                                        CustomTextStyles.titleMediumMedium18,
                                    hintText: 'Enter full name',
                                    controller: fullNameEditTextController,
                                    validator: FormValidation.stringValidation,
                                    isBorderNone: true,
                                  ),
                                  SizedBox(height: 25.v),
                                  CustomTextFormField(
                                    title: 'Email Address',
                                    titleStyle:
                                        CustomTextStyles.titleMediumMedium18,
                                    hintText: 'Enter email address',
                                    controller: emailController,
                                    validator: FormValidation.stringValidation,
                                    isBorderNone: true,
                                  ),
                                  SizedBox(height: 25.v),
                                  CustomDropDown<String>(
                                    isBorderNone: true,
                                    titleStyle:
                                        CustomTextStyles.titleMediumMedium18,
                                    title: 'Job Type',
                                    items: state.jobTypeList,
                                    selectedItem: state.jobType,
                                    itemLabel: (gender) => gender,
                                    onChanged: (value) {
                                      context.read<SettingBloc>().add(
                                            SettingEvent.updateSelectedJobType(
                                                value ?? ''),
                                          );
                                    },
                                  ),
                                  SizedBox(height: 25.v),
                                  CustomTextFormField(
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(11),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    title: 'Phone Number',
                                    titleStyle:
                                        CustomTextStyles.titleMediumMedium18,
                                    hintText: 'Enter phone number',
                                    controller: phoneNoTextController,
                                    validator: FormValidation.stringValidation,
                                    isBorderNone: true,
                                  ),
                                  SizedBox(
                                    height: 25.v,
                                  ),
                                  CustomTextFormField(
                                    ontap: () async {
                                      DateTime? pickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2024),
                                        lastDate: DateTime.now(),
                                      );
                                      dateOfBirthController.text =
                                          "${pickedDate!.year}-${pickedDate.month}-${pickedDate.day}";

                                      context.read<SettingBloc>().add(
                                          SettingEvent.updateSelectedDate(
                                              pickedDate));
                                    },
                                    hintText: 'YYYY-MM-DD',
                                    titleStyle:
                                        CustomTextStyles.titleMediumMedium18,
                                    validator: FormValidation.stringValidation,
                                    isBorderNone: true,
                                    readOnly: true,
                                    title: 'Date of Birth',
                                    controller: dateOfBirthController,
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  BlocSelector<SettingBloc, SettingState,
                                      UpdateJobSeekerProfileEntity>(
                                    selector: (state) {
                                      return state
                                          .updateJobSeekerProfileRequest;
                                    },
                                    builder: (context, updateJobSeekerRequest) {
                                      return CustomElevatedButton(
                                        onPressed: (() {
                                          if (formKey.currentState
                                                  ?.validate() ??
                                              false) {
                                            context.read<SettingBloc>().add(
                                                SettingEvent.updateJobSeekerRequest(
                                                    updateJobSeekerRequest
                                                        .copyWith(
                                                            identity:
                                                                UserService()
                                                                        .authData
                                                                        ?.user
                                                                        .identity ??
                                                                    '',
                                                            passport: state
                                                                .picture,
                                                            resume:
                                                                state.resume,
                                                            fullName:
                                                                fullNameEditTextController
                                                                    .text,
                                                            email:
                                                                emailController
                                                                    .text,
                                                            phoneNumber:
                                                                phoneNoTextController
                                                                    .text,
                                                            dateOFBirth:
                                                                dateOfBirthController
                                                                    .text,
                                                            jobPreference: state
                                                                .jobType)));
                                            Navigator.pushNamed(
                                              context,
                                              AppRoutes
                                                  .updateProfilePageTwoScreen,
                                            );
                                            print(
                                                'update ${state.picture} ${state.resume} ${fullNameEditTextController.text} ${emailController.text} ${phoneNoTextController.text} ${dateOfBirthController.text} ${state.jobType}');
                                          }
                                        }),
                                        text: "Next",
                                      );
                                    },
                                  ),
                                  SizedBox(height: 25.v),
                                ]))
                          ])))),
            );
          },
        ));
  }
}
