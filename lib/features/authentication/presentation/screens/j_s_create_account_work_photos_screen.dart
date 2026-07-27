import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/authentication/domain/entities/register_job_seeker_entity.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore_for_file: must_be_immutable
class JSCreateAccountWorkPhotosScreen extends StatelessWidget {
  final String email;
  JSCreateAccountWorkPhotosScreen({required this.email, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.kwhite,
            appBar: CustomAppBar(
              title: '',
            ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 12.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("Work Photos",
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 10.v),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return Container(
                              margin: EdgeInsets.only(right: 10.h),
                              padding: EdgeInsets.symmetric(
                                  vertical: 6.v, horizontal: 5.v),
                              decoration: AppDecoration.outlineBlueGray
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          context.read<AuthBloc>().add(
                                              const AuthEvent
                                                  .selectWorkPhotos());
                                        },
                                        child: Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: ColorSchemes
                                                    .primaryColorScheme
                                                    .primary),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Text('Choose Files',
                                                    style: theme
                                                        .textTheme.labelMedium
                                                        ?.copyWith(
                                                            color: const Color
                                                                .fromARGB(255,
                                                                88, 49, 49))),
                                              ),
                                            ))),
                                    SizedBox(width: 5.v),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 5.v, right: 5.v),
                                      child: Text(
                                          state.workPhotos.isEmpty
                                              ? "No file chosen"
                                              : "${state.workPhotos.length} file(s) selected",
                                          style: theme.textTheme.labelLarge),
                                    )
                                  ]));
                        },
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("You can select multiple files",
                              style: theme.textTheme.labelMedium)),
                      SizedBox(height: 45.v),
                      BlocSelector<AuthBloc, AuthState,
                          RegisterJobSeekerEntity>(
                        selector: (state) {
                          return state.registerJobSeekerRequest;
                        },
                        builder: (context, registerJobSeekerRequest) {
                          return BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return CustomElevatedButton(
                                onPressed: (() {
                                  context.read<AuthBloc>().add(
                                      AuthEvent.updateRegisterJobSeekerRequest(
                                          registerJobSeekerRequest.copyWith(
                                              workPhotos: state.workPhotos)));
                                  Navigator.pushNamed(context,
                                      AppRoutes.jSCreateAccountPageSixScreen,
                                      arguments: email);
                                }),
                                text: "Next",
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(height: 40.v),
                    ]))));
  }
}
