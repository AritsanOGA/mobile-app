import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/services/user_service.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  AnimationController? _animationController;
  Animation? _sizeAnimation;

  @override
  void initState() {
    context.read<AuthBloc>().add(const AuthEvent.getUserData());
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000))
      ..forward();

    _sizeAnimation = Tween<double>(begin: 20.0, end: 80.0).animate(
      CurvedAnimation(
          parent: _animationController!, curve: const Interval(0.0, 0.5)),
    );

    _animationController!.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(const Duration(seconds: 3), () {
            print('my user datav ${UserService().authData}');
            if (UserService().authData == null) {
              Navigator.pushNamedAndRemoveUntil(
                  context, AppRoutes.welcomePageScreen, (route) => false);
            } else if (UserService().authData!.user.role == 'Employer') {
              Navigator.pushNamedAndRemoveUntil(
                  context, AppRoutes.employerNavBarScreen, (route) => false);
            } else {
              Navigator.pushNamedAndRemoveUntil(
                  context, AppRoutes.jobSeekerNavBarScreen, (route) => false);
            }
          });
        }
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, _) {
        return AnnotatedRegion(
            value: SystemUiOverlayStyle(
                statusBarColor: AppColors.kwhite,
                statusBarIconBrightness: Brightness.dark,
                systemNavigationBarIconBrightness: Brightness.dark,
                systemNavigationBarColor: AppColors.kwhite),
            child: Scaffold(
              body: Center(
                child: AnimatedBuilder(
                  animation: _animationController!,
                  builder: (context, child) {
                    // return Image.asset(
                    //   'assets/gtube_icon.png',
                    //   height: sizeAnimation!.value * 3.5,
                    //   width: sizeAnimation!.value * 3.5,
                    // );

                    return Image.asset(
                      'assets/images/splash_logo.jpeg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
            ));
      },
    );
  }
}

//  Scaffold(
//         backgroundColor = AppColors.plainWhite,
//         body = Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Center(
//             child: AnimatedBuilder(
//               animation: animationController!,
//               builder: (context, child) {
//                 // return Image.asset(
//                 //   'assets/gtube_icon.png',
//                 //   height: sizeAnimation!.value * 3.5,
//                 //   width: sizeAnimation!.value * 3.5,
//                 // );

//                 return Text(
//                   AppStrings.appName,
//                   style: AppStyles.genHeaderStyle(
//                     sizeAnimation!.value * 1.2,
//                     1.5,
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
