import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'base_button.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final BoxDecoration? decoration;
  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.height,
      this.width,
      this.decoration});
  // CustomElevatedButton({
  //   Key? key,
  //   this.decoration,
  //   this.leftIcon,
  //   this.rightIcon,
  //   EdgeInsets? margin,
  //   VoidCallback? onPressed,
  //   ButtonStyle? buttonStyle,
  //   Alignment? alignment,
  //   TextStyle? buttonTextStyle,
  //   bool? isDisabled,
  //   double? height,
  //   double? width,
  //   required String text,
  // }) : super(
  //         key: key,
  //       );

  // final BoxDecoration? decoration;

  // final Widget? leftIcon;

  // final Widget? rightIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50.v,
      width: this.width ?? double.maxFinite,
      // margin: margin,
      decoration: decoration,
      // margin: EdgeInsets.symmetric(horizontal: 3.h),
      child: ElevatedButton(
        // style: buttonStyle,
        onPressed: onPressed,
        child: Text(
          text,
          style:
              // buttonTextStyle ??
              CustomTextStyles.titleMediumGray50_1,
        ),
      ),
    );
    // alignment != null
    // ? Align(
    //     alignment: alignment ?? Alignment.center,
    //     child: buildElevatedButtonWidget,
    //   )
    // : buildElevatedButtonWidget;
  }

  // Widget get buildElevatedButtonWidget =>
}

// class CustomElevatedButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onPressed;
//   const CustomElevatedButton(
//       {super.key, required this.text, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // height: 30.v,
//       //     width: 125.h,
//       height: 48.v,
//       width: double.maxFinite,
//       margin: EdgeInsets.symmetric(horizontal: 3.h),
//       //  margin: margin,
//       decoration: BoxDecoration(color: Colors.red),
//       // AppDecoration.fillLightGreen.copyWith(
//       //   borderRadius: BorderRadiusStyle.roundedBorder7,
//       // ),
//       child: ElevatedButton(
//         style: CustomButtonStyles.fillBlueGray,
//         onPressed: onPressed,
//         child: Text(
//           text,
//           style: CustomTextStyles.titleMediumGray50_1,
//         ),
//       ),
//     );
//   }
// }
