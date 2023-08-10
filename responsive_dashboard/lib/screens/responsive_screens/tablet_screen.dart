import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    var len = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: myBackGroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
    );
  }
}
