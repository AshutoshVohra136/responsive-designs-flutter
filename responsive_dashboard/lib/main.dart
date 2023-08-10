import 'package:flutter/material.dart';
import 'package:responsive_dashboard/screens/responsive_screens/desktop_screen.dart';
import 'package:responsive_dashboard/screens/responsive_screens/mobile_screen.dart';
import 'package:responsive_dashboard/screens/responsive_screens/responsive_screen.dart';
import 'package:responsive_dashboard/screens/responsive_screens/tablet_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveScreen(
        desktopScreen: DesktopScreen(),
        mobileScreen: MobileScreen(),
        tabletScreen: TabletScreen(),
      ),
    ),
  );
}
