import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:cupertino_will_pop_scope/cupertino_will_pop_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../authentication/presentation/blocs/bloc/auth_bloc.dart';

class SuccessfulJobPostedPage extends StatelessWidget {
  const SuccessfulJobPostedPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return ConditionalWillPopScope(
          onWillPop: () async {
            context.read<AuthBloc>().add(AuthEvent.selectTab(0));
            Navigator.popUntil(
                context, ModalRoute.withName('/employer-dashboard'));
            return false;
          },
          shouldAddCallback: false,
          child: SafeArea(
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
                      "Job posted successfully",
                      style: CustomTextStyles.titleMediumPrimaryContainer18,
                    ),
                    SizedBox(height: 15.v),
                    Spacer(
                      flex: 56,
                    ),
                    CustomElevatedButton(
                      text: "Back to Home",
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthEvent.selectTab(0));
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(height: 34.v),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
