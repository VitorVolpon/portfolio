import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget isMobile;
  final Widget isWeb;

  const ResponsiveLayout({super.key, required this.isMobile, required this.isWeb});


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return isMobile;
        }else {
          return isWeb;
        }
      },);
  }
}