import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    var len = MediaQuery.of(context).size.width;

    if (kDebugMode) {
      print(len);
    }
    return Scaffold(
      backgroundColor: myBackGroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
    );
  }
}
