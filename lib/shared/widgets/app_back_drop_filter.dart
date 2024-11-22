import 'dart:ui';

import 'package:flutter/material.dart';

class AppBackDropFilter extends StatelessWidget {
  const AppBackDropFilter({
    super.key,
    required this.child,
    this.sigmaY = 5,
    this.sigmaX = 5,
    this.radius = 0,
  });

  final Widget child;
  final double sigmaY;
  final double sigmaX;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: child,
      ),
    );
  }
}