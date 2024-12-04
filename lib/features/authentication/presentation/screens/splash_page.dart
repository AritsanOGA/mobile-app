import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/core/utils/image_constant.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
  });

  static const routeName = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  @override
  void initState() {
    animationController.repeat();
    context.read<AuthBloc>().add(const AuthEvent.getUserData());

    super.initState();
  }

  late AnimationController animationController = AnimationController(
    vsync: this,
    value: 0,
    upperBound: 10,
    duration: const Duration(seconds: 1),
  );

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, _) {
        Future.delayed(const Duration(seconds: 3), () {
          // if (UserService().authData == null) {
          //   Navigator.pushNamed(context, AppRoutes.welcomePageScreen);
          // } else if (UserService().authData!.user.role == 'Employer') {
          //   Navigator.pushNamed(context, AppRoutes.employerNavBarScreen);
          // } else {
          //   Navigator.pushNamed(context, AppRoutes.jobSeekerNavBarScreen);
          // }
        });
        return Scaffold(
          backgroundColor: AppColors.kwhite,
          body: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              // Center(
              //   child: Image.asset(
              //     AppAssetPath.logo,
              //     width: AppSpacing.screenWidth(context) * .6,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'THE HOME OF FOOTBALL',
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  AnimatedBuilder(
                    animation: animationController,
                    builder: (BuildContext context, Widget? child) => Padding(
                      padding: EdgeInsets.only(
                        bottom: animationController.value,
                      ),
                      child: AnimatedRotation(
                        turns: animationController.value.toInt() == 9 ? 0 : 2,
                        duration: const Duration(milliseconds: 300),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle1,
                          height: 28.v,
                          width: 20.h,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        );
      },
    );
  }
}
