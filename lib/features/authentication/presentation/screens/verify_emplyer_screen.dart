import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/core/routes/app_routes.dart';
import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/core/utils/view_state.dart';
import 'package:artisan_oga/features/authentication/domain/entities/verify_code_entity.dart';
import 'package:artisan_oga/shared/widgets/custom_dialog.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:artisan_oga/shared/widgets/custom_toast.dart';
import 'package:artisan_oga/theme/custom_text_style.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pinput/pinput.dart';

import '../blocs/bloc/auth_bloc.dart';

class VerifyEmployerScreen extends HookWidget {
  final String email;
  const VerifyEmployerScreen({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    final otpController = useTextEditingController();
    return Scaffold(
      backgroundColor: AppColors.kwhite,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.employerVerifyCodeState ==
              EmployerVerifyCodeState.success) {
            print('suceess');
            Navigator.pushNamed(
              context,
              AppRoutes.successScreen,
              arguments: {
                'message': 'Account Created',
                'onTap': () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.employerLoginPageScreen,
                  );
                },
              },
            );
          } else if (state.employerVerifyCodeState ==
              EmployerVerifyCodeState.failure) {
            ToastUtils.showRedToast(state.errorMessage ?? '');
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 12.v,
              ),
              child: Center(
                child: Column(
                  //  crossAxisAlignment: CrossAxisAlignment.center,
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
                                text: email,
                                style: CustomTextStyles.titleSmallfff7941e)
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
                          border:
                              Border.all(color: theme.primaryColor, width: 1),
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
                    CustomElevatedButton(
                        isBusy: state.employerVerifyCodeState ==
                            EmployerVerifyCodeState.loading,
                        onPressed: () {
                          context.read<AuthBloc>()
                            ..add(AuthEvent.verifyCode(VerifyCodeEntity(
                                code: otpController.text, email: email)));
                        },
                        text: 'Verify')
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
