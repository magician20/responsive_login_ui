import 'package:flutter/material.dart';
import 'constants.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileBreakpoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopBreakpoint &&
      MediaQuery.of(context).size.width >= mobileBreakpoint;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopBreakpoint;

  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width >= laptopBreakpoint;

  static bool isShowDrawerSize(BuildContext context) =>
      MediaQuery.of(context).size.width > limitDrawerBreakpoint;
      
  static bool moreThanTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletBreakpoint;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    debugPrint(_size.width.toString());
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= desktopBreakpoint) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= mobileBreakpoint && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
