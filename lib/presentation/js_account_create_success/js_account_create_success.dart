
import 'package:flutter/material.dart';
import 'package:artisan_oga/core/app_export.dart';
import 'package:artisan_oga/shared/widgets/custom_elevated_button.dart';
import 'package:flutter/services.dart';

class JSCreateAccountSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
          if (didPop) {
            return;
          }
          final bool shouldPop = await _showBackDialog(context) ?? false;
          if (context.mounted && shouldPop) {
            Navigator.pop(context);
          }
        },
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 12.v,
              ),
              child: Center(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 40,
                        color: Colors.orange,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Your account has been created successfully. Please check the email sent to verify your email and aftwards login into the app",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 67, 67, 66),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      CustomElevatedButton(
                        text: "Login",
                        onPressed: (() {
                          Navigator.pushNamed(
                              context, AppRoutes.employerLoginPageScreen);
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  Future<bool?> _showBackDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
            'Are you sure you want to leave this page?',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('No'),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Leave'),
              onPressed: () async {
                await SystemChannels.platform
                    .invokeMethod('SystemNavigator.pop');
              },
            ),
          ],
        );
      },
    );
  }
}
