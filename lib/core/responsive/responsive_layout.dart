import 'package:flutter/material.dart';

import 'package:fintech_app/core/responsive/responsive.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    Widget? tablet,
    Widget? desktop,
  }) : tablet = tablet ?? mobile,
       desktop = desktop ?? tablet ?? mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= Breakpoints.maxMini) {
          //TODO: Corregir en un futuro para pantallas muy pequeñas
          //TODO: Tomar refencia del login de google
          return Scaffold(
            body: Center(
              child: Text("Screen size not supported"),
            ),
          );
        } else if (constraints.maxWidth <= Breakpoints.maxMobile) {
          return mobile;
        } else if (constraints.maxWidth <= Breakpoints.maxTablet &&
            constraints.maxWidth > Breakpoints.maxMobile) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
