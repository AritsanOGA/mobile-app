import 'package:artisan_oga/core/app_constants/app_assets_paths.dart';
import 'package:artisan_oga/core/app_constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/app_export.dart';

class CustomDropDown<T> extends StatelessWidget {
  CustomDropDown(
      {Key? key,
      this.alignment,
      this.width,
      this.focusNode,
      this.icon,
      this.autofocus = true,
      this.textStyle,
      required this.items,
      this.hintText,
      this.hintStyle,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.contentPadding,
      this.borderDecoration,
      this.fillColor,
      this.filled = false,
      this.validator,
      required this.onChanged,
      required this.selectedItem,
      required this.itemLabel,
      this.title,
      this.isBorderNone,
      this.titleStyle})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final FocusNode? focusNode;

  final Widget? icon;

  final bool? autofocus;

  final TextStyle? textStyle;

  final List<T> items;

  final String? hintText;
  final T selectedItem;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;
  final String? title;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final bool? isBorderNone;
  final TextStyle? titleStyle;
  final FormFieldValidator<String>? validator;
  final String Function(T) itemLabel;
  final void Function(T?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title ?? '',
            style: titleStyle ?? CustomTextStyles.bodyMediumPrimaryContainer_1),
        SizedBox(height: 7.v),
        SizedBox(
          height: 50.v,
          child: DropdownButtonFormField(
            value: selectedItem,
            isExpanded: true,
            focusColor: AppColors.kwhite,
            focusNode: focusNode ?? FocusNode(),
            icon: Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: SvgPicture.asset(AppAsset.dropdown),
            ),
            autofocus: autofocus!,
            style: textStyle ?? theme.textTheme.titleSmall,
            items: items.map((value) {
              return DropdownMenuItem<T>(
                value: value,
                child: Text(
                  itemLabel(value),
                  overflow: TextOverflow.ellipsis,
                  style: hintStyle ?? theme.textTheme.titleSmall,
                ),
              );
            }).toList(),
            decoration: decoration,
            //validator: validator,
            onChanged: onChanged,
          ),
        ),
      ],
    );

    // alignment != null
    //     ? Align(
    //         alignment: alignment ?? Alignment.center,
    //         child: dropDownWidget,
    //       )
    //     : dropDownWidget;
  }

  // Widget get dropDownWidget => SizedBox(
  //       width: width ?? double.maxFinite,
  //       child:
  //     );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.titleSmall,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              left: 15.h,
              top: 15.v,
              bottom: 15.v,
            ),
        fillColor: fillColor,
        filled: filled,
        border: isBorderNone == true
            ? UnderlineInputBorder(
                borderSide: BorderSide(color: appTheme.blueGray10001),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.h),
                borderSide: BorderSide(
                  color: appTheme.blueGray10001,
                  width: 1,
                ),
              ),
        enabledBorder: isBorderNone == true
            ? UnderlineInputBorder(
                borderSide: BorderSide(color: appTheme.blueGray10001),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.h),
                borderSide: BorderSide(
                  color: appTheme.blueGray10001,
                  width: 1,
                ),
              ),
        focusedBorder: isBorderNone == true
            ? UnderlineInputBorder(
                borderSide: BorderSide(color: appTheme.blueGray10001),
              )
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(7.h),
                borderSide: BorderSide(
                  color: appTheme.blueGray10001,
                  width: 1,
                ),
              ),
      );
}
