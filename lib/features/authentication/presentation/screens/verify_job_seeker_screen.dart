import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/presentation/blocs/bloc/auth_bloc.dart';
import 'package:artisan_oga/shared/widgets/custom_dialog.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pinput/pinput.dart';

class VerifyJobSeekerScreen extends HookWidget {
  const VerifyJobSeekerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final otpController = useTextEditingController();
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.viewState == ViewState.success) {
            print('suceess');
            Navigator.pushNamed(context, AppRoutes.dashboardScreen);
          } else if (state.viewState == ViewState.failure) {
            showDialog<Widget>(
              context: context,
              builder: (ctx) => CustomAlertDialog(
                title: 'Error!!!',
                content: state.errorMessage ?? '',
                actionText: 'OK',
                onActionPressed: () => Navigator.of(ctx).pop(),
              ),
            );
          }
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 12.v,
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40.v),
                  Text('Verify Code', style: theme.textTheme.headlineSmall),
                  SizedBox(height: 17.v),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Please enter the code we just sent to email\n',
                        style: theme.textTheme.headlineSmall
                            ?.copyWith(fontSize: 13),
                        children: [
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigator.pushNamed(
                                  //     context, AppRoute.signupPage);
                                },
                              text: '',
                              style: const TextStyle(
                                  color: AppColors.kblack,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16))
                        ]),
                  ),
                  SizedBox(height: 40.v),
                  Pinput(
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: theme.textTheme.headlineSmall,
                      decoration: BoxDecoration(
                        color: AppColors.kwhite,
                        border: Border.all(color: theme.primaryColor, width: 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    length: 6,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //focusNode: _pinPutFocusNode,
                    controller: otpController,
                    textInputAction: TextInputAction.done,
                    // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    //separator: const XMargin(3),
                    onChanged: (pin) {
                      // setState(() {
                      //   proceedWithPin = pin.length == inputLength;
                      // });
                      // if (pin.length == inputLength) {
                      //   resetTimer();
                      // }
                    },
                  ),
                  SizedBox(height: 40.v),
                  Text(
                    'Didn’t receive OTP?',
                    style:
                        theme.textTheme.headlineSmall?.copyWith(fontSize: 13),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    'Resend code',
                    style:
                        theme.textTheme.headlineSmall?.copyWith(fontSize: 13),
                  ),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(onPressed: () {}, text: 'Verify')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}