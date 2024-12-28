import 'package:artisan_oga/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WaiteringItemWidget extends StatelessWidget {
  final String skill;
  const WaiteringItemWidget({Key? key, required this.skill})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 3.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        skill,
        style: TextStyle(
          color: appTheme.gray50,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          11.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
