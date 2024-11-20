import 'package:artisan_oga/core/utils/size_utils.dart';
import 'package:artisan_oga/theme/custom_text_style.dart';
import 'package:artisan_oga/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class CustomDateFormField extends StatelessWidget {
  final String label;
  final String? hint;
  final VoidCallback onTap;
  final bool readOnly;
  const CustomDateFormField({
    Key? key,
    required this.label,
    this.hint,
    required this.onTap,
    this.readOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: CustomTextStyles.bodyMediumPrimaryContainer_1),
        // style: context.apptextTheme.titleLarge?.copyWith(
        //     fontSize: 13,
        //     color: readOnly
        //         ? AppColors.text60.withOpacity(0.5)
        //         : AppColors.text60),
        SizedBox(height: 7.v),
        TextField(
          decoration: InputDecoration(
            hintText: hint ?? "",
            // hintStyle: context.apptextTheme.titleLarge?.copyWith(
            //     fontSize: 13,
            //     color: readOnly
            //         ? AppColors.text50.withOpacity(0.5)
            //         : AppColors.text50),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: appTheme.blueGray10001,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: appTheme.blueGray10001,
                width: 1,
              ),
            ),
          ),
          readOnly: readOnly,
          onTap: readOnly ? null : onTap,
        ),
      ],
    );
  }
}
