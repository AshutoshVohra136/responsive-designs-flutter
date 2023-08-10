import 'package:flutter/material.dart';
import 'package:simple_youtube_responsive_layout/constants/dimensiions.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key, required this.mobilescreen, required this.desktopscreen});

  final Widget mobilescreen;

  final Widget desktopscreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > mobileWidth) {
          return desktopscreen;
        } else {
          return mobilescreen;
        }
      },
    );
  }
}
