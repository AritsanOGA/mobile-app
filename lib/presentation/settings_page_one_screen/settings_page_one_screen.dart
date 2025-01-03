import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/features/settings/presentation/bloc/setting_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_appbar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JSSettingsPage extends HookWidget {
  const JSSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<SettingBloc>().add(SettingEvent.getJobSeekerProfile());
      return null;
    }, []);
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
                backgroundColor: AppColors.kwhite,
                appBar: CustomAppBar(
                  title: 'Settings',
                ),
                body: Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.fillGray,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.h, vertical: 38.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 3.h, right: 4.h),
                                  child: Row(children: [
                                    // GestureDetector(
                                    //   onTap: () {
                                    //     print(
                                    //         'helllo ${state.getEmployerResponseEntity}');
                                    //   },
                                    //   child: CustomImageView(
                                    //       imagePath: ImageConstant.imgEllipse38,
                                    //       height: 57.adaptSize,
                                    //       width: 57.adaptSize,
                                    //       radius: BorderRadius.circular(28.h)),
                                    // ),
                                    CachedNetworkImage(
                                      imageUrl:
                                          'https://storage.googleapis.com/kunpexchange-6a590.appspot.com/cities_post/600c520b-321f-4155-a9f7-6a06cb137466download (4).jpeg',
                                      fit: BoxFit.cover,
                                      progressIndicatorBuilder:
                                          (context, url, downloadProgress) =>
                                              const Center(),
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          // borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image:
                                                imageProvider, // Use the provided imageProvider
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, top: 5.v, bottom: 5.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  state.getJobSeekerResponseEntity
                                                          ?.fullName ??
                                                      '',
                                                  style: CustomTextStyles
                                                      .titleLargePrimary),
                                              SizedBox(height: 1.v),
                                              Text(
                                                  state.getJobSeekerResponseEntity
                                                          ?.role ??
                                                      '',
                                                  style: theme
                                                      .textTheme.titleSmall)
                                            ])),
                                    Spacer(),
                                    SvgPicture.asset(ImageConstant.imgPrinter),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPrinter,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 24.v, bottom: 15.v))
                                  ])),

                              SizedBox(height: 24.v),
                              Divider(indent: 3.h, endIndent: 4.h),
                              SizedBox(height: 27.v),

                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Row(children: [
                                    SvgPicture.asset(ImageConstant.imgLocation),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.h, top: 2.v),
                                        child: Text("Change Password",
                                            style: CustomTextStyles
                                                .titleMediumPrimaryContainerMedium_1))
                                  ])),
                              SizedBox(height: 32.v),
                              // SizedBox(height: 30.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Row(children: [
                                    SvgPicture.asset(ImageConstant.imgBookmark),
                                    Padding(
                                        padding: EdgeInsets.only(left: 15.h),
                                        child: Text("Payment Integration",
                                            style: CustomTextStyles
                                                .titleMediumPrimaryContainerMedium_1))
                                  ])),
                              SizedBox(height: 32.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Row(children: [
                                    SvgPicture.asset(
                                        ImageConstant.imgTrendingUp),
                                    Padding(
                                        padding: EdgeInsets.only(left: 15.h),
                                        child: Text("Update Profile",
                                            style: CustomTextStyles
                                                .titleMediumPrimaryContainerMedium_1))
                                  ])),
                              SizedBox(height: 34.v),
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return GestureDetector(
                                    onTap: () {
                                      context.read<AuthBloc>().add(
                                          const AuthEvent.removeUserData());

                                      Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          AppRoutes.jSLoginPageScreen,
                                          (route) => false);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Row(children: [
                                          SvgPicture.asset(ImageConstant
                                              .imgThumbsUpPrimarycontainer22x22),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 14.h),
                                              child: Text("Log out",
                                                  style: CustomTextStyles
                                                      .titleMediumPrimaryContainerMedium_1))
                                        ])),
                                  );
                                },
                              ),
                              SizedBox(height: 5.v)
                            ])))));
      },
    );
  }
}
