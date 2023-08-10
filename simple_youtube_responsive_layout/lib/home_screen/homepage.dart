import 'package:flutter/material.dart';
import 'package:simple_youtube_responsive_layout/home_screen/desktop.dart';
import 'package:simple_youtube_responsive_layout/home_screen/mobile.dart';
import 'package:simple_youtube_responsive_layout/home_screen/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: ResponsiveLayout(
          desktopscreen: DesktopScreen(),
          mobilescreen: MobileScreen(),
        ),
      ),
    );
  }
}
