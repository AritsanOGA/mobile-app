import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../authentication/presentation/blocs/bloc/auth_bloc.dart';

class HireMeSuccessPage extends StatelessWidget {
  const HireMeSuccessPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 12.v,
              ),
              child: Column(
                children: [
                  Spacer(
                    flex: 43,
                  ),
                  SvgPicture.asset(ImageConstant.imgVectorPrimary),
                  SizedBox(height: 23.v),
                  Text(
                    "Request Sent",
                    style: CustomTextStyles.titleLargePrimarySemiBold,
                  ),
                  SizedBox(height: 15.v),
                  Text(
                    "Our Client service officer will contact you as soon as possible.",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallPrimaryContainer,
                  ),
                  Spacer(
                    flex: 56,
                  ),
                  CustomElevatedButton(
                    text: "Back to Home",
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 34.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
