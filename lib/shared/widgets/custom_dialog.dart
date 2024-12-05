import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:artisan_oga/shared/widgets/app_back_drop_filter.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.actionText,
    required this.onActionPressed,
    this.secondaryActionText,
    this.onSecondaryActionPressed,
  });

  final String title;
  final String content;
  final String actionText;
  final String? secondaryActionText;
  final VoidCallback onActionPressed;
  final VoidCallback? onSecondaryActionPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      backgroundColor: const Color(0xFFF2F2F2),
      child: AppBackDropFilter(
        radius: 14,
        sigmaX: 11,
        sigmaY: 11,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  title,
                  style: theme.textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              // AppSpacing.setVerticalSpace(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  content,
                  style: theme.textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              //AppSpacing.setVerticalSpace(12),
              Divider(
                color: AppColors.kblack,
                endIndent: 0,
                indent: 0,
              ),
              TextButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(
                    EdgeInsets.zero,
                  ),
                ),
                onPressed: onActionPressed,
                child: Text(
                  actionText,
                  style: theme.textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    //color: AppColors.systemBlue,
                  ),
                ),
              ),
              if (secondaryActionText != null &&
                  onSecondaryActionPressed != null) ...[
                // AppSpacing.setVerticalSpace(12),
                const Divider(
                  color: AppColors.kblack,
                  endIndent: 0,
                  indent: 0,
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                      EdgeInsets.zero,
                    ),
                  ),
                  onPressed: onSecondaryActionPressed,
                  child: Text(
                    secondaryActionText!,
                    // style: context.textTheme.displayLarge?.copyWith(
                    //   fontWeight: FontWeight.w700,
                    //   fontSize: 16.fontSize,
                    //   color: AppColors.systemBlue,
                    // ),
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
