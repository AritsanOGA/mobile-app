import 'package:flutter/material.dart';

class AppPageRouteBuilder extends PageRouteBuilder {
  AppPageRouteBuilder({
    required this.navigateTo,
    this.setting,
    this.pageTransitionsBuilder = const AppSlidePageTransition(),
  }) : super(pageBuilder: (_, __, ___) => navigateTo, settings: setting);
  final PageTransitionsBuilder pageTransitionsBuilder;
  final RouteSettings? setting;
  final Widget navigateTo;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return pageTransitionsBuilder.buildTransitions(
      this,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}

class AppSlidePageTransition extends PageTransitionsBuilder {
  const AppSlidePageTransition();
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  }
}
