import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool hasBackButton;
  final bool hasBottom;
  final bool isClose;
  final double? fontSize;
  final Function()? onTap;
  final Color? backgroundColor;

  final Color? contentColor;
  const CustomAppBar({
    super.key,
    this.title,
    this.fontSize,
    this.onTap,
    this.hasBackButton = true,
    this.hasBottom = false,
    this.isClose = false,
    this.backgroundColor,
    this.contentColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 200,
      backgroundColor: Colors.white,
      leading: hasBackButton && !isClose
          ? IconButton(
              onPressed: () {
                onTap?.call();
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                //color: contentColor ?? AppColors,
              ),
            )
          : const SizedBox.shrink(),
      centerTitle: true,
      title: title == null
          ? null
          : Text(
              title!,
              // style: AppTextStyle.medium16.copyWith(
              //   color: contentColor ?? AppColors.textDark,
              // ),
            ),
      actions: [
        if (isClose)
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                //   color: contentColor ?? AppColors.textDark,
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
