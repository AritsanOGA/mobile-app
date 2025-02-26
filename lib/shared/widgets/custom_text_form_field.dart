import 'package:artisan_oga/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.controller,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.titleStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = false,
    this.validator,
    this.readOnly = false,
    this.isPassword = false,
    this.isObscure = false,
    this.isBorderNone = false,
    this.inputFormatters,
    required this.title,
    this.ontap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;
  final List<TextInputFormatter>? inputFormatters;

  final double? width;
  final bool? isBorderNone;
  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;
  final TextStyle? titleStyle;
  final bool? isPassword;
  bool? isObscure;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;
  final String title;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;
  final Function()? ontap;

  final FormFieldValidator<String>? validator;

  final bool? readOnly;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final NumberFormat _formatter = NumberFormat("#,###");

  @override
  void initState() {
    super.initState();
    widget.controller?.addListener(_formatInput);
  }

  void _formatInput() {
    String text = widget.controller!.text;

    // If text is empty or non-numeric, do nothing
    if (text.isEmpty || !RegExp(r'^\d+$').hasMatch(text.replaceAll(',', '')))
      return;

    // Remove existing commas and parse as number
    double value = double.tryParse(text.replaceAll(',', '')) ?? 0;
    String formattedText = _formatter.format(value);

    // Update controller with formatted text
    widget.controller!.value = TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(
          offset: formattedText.length), // Keep cursor at end
    );
  }

  @override
  void dispose() {
    widget.controller!.removeListener(_formatInput);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,
            style: widget.titleStyle ??
                CustomTextStyles.bodyMediumPrimaryContainer_1),
        SizedBox(height: 7.v),
        SizedBox(
          width: widget.width ?? double.maxFinite,
          child: TextFormField(
            onTap: widget.ontap,
            readOnly: widget.readOnly!,
            inputFormatters: widget.inputFormatters,
            scrollPadding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            controller: widget.controller,
            style: widget.textStyle ??
                CustomTextStyles.titleSmallPrimaryContainer_1,
            obscureText: widget.isObscure!,
            textInputAction: widget.textInputAction,
            keyboardType: widget.textInputType,
            maxLines: widget.maxLines ?? 1,
            decoration: InputDecoration(
              hintText: widget.hintText ?? "",
              hintStyle:
                  widget.hintStyle ?? CustomTextStyles.labelLargeBluegray400,
              prefixIcon: widget.prefix,
              prefixIconConstraints: widget.prefixConstraints,
              suffixIcon: widget.isPassword!
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          widget.isObscure = !widget.isObscure!;
                        });
                      },
                      icon: Icon(
                          widget.isObscure!
                              ? Icons.visibility_off
                              : Icons.visibility_sharp,
                          color: Colors.black),
                    )
                  : null,
              suffixIconConstraints: widget.suffixConstraints,
              isDense: true,
              contentPadding: widget.contentPadding ??
                  EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: widget.isBorderNone == true ? 3.h : 15.h),
              fillColor: widget.fillColor,
              filled: widget.filled,
              border: widget.isBorderNone == true
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
              enabledBorder: widget.isBorderNone == true
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
              focusedBorder: widget.isBorderNone == true
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(color: appTheme.blueGray10001),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.h),
                      borderSide: BorderSide(
                        color: appTheme.gray500,
                        width: 1,
                      ),
                    ),
            ),
            validator: widget.validator,
          ),
        ),
      ],
    );
    // alignment != null
    //     ? Align(
    //         alignment: alignment ?? Alignment.center,
    //         child: textFormFieldWidget(context),
    //       )
    //     : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => SizedBox(
        width: widget.width ?? double.maxFinite,
        child: TextFormField(
          readOnly: widget.readOnly!,
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: widget.controller,
          style:
              widget.textStyle ?? CustomTextStyles.titleSmallPrimaryContainer_1,
          obscureText: widget.obscureText!,
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          maxLines: widget.maxLines ?? 1,
          decoration: decoration,
          validator: widget.validator,
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: widget.hintText ?? "",
        hintStyle: widget.hintStyle ?? CustomTextStyles.labelLargeBluegray400,
        prefixIcon: widget.prefix,
        prefixIconConstraints: widget.prefixConstraints,
        suffixIcon: widget.suffix,
        suffixIconConstraints: widget.suffixConstraints,
        isDense: true,
        contentPadding: widget.contentPadding ?? EdgeInsets.all(15.h),
        fillColor: widget.fillColor,
        filled: widget.filled,
        border: widget.borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: appTheme.blueGray10001,
                width: 1,
              ),
            ),
        enabledBorder: widget.borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: appTheme.blueGray10001,
                width: 1,
              ),
            ),
        focusedBorder: widget.borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.h),
              borderSide: BorderSide(
                color: appTheme.gray500,
                width: 1,
              ),
            ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get fillBlack => OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.h),
        borderSide: BorderSide.none,
      );
  static UnderlineInputBorder get underLinePrimaryContainer =>
      UnderlineInputBorder(
        borderSide: BorderSide(
          color: theme.colorScheme.primaryContainer.withOpacity(0.16),
        ),
      );
}
