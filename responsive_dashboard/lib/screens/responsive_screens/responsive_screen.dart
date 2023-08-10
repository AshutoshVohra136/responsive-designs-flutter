import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;
  const ResponsiveScreen(
      {super.key,
      required this.desktopScreen,
      required this.mobileScreen,
      required this.tabletScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, contraints) {
        if (contraints.maxWidth < 600) {
          return mobileScreen;
        } else if (contraints.maxWidth < 1100) {
          return tabletScreen;
        } else {
          return desktopScreen;
        }
      },
    );
  }
}
