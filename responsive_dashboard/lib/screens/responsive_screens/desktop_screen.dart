import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    var len = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: myBackGroundColor,
      appBar: myAppBar,
      body: GridView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: 50,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: const Color.fromARGB(255, 141, 139, 132),
              child: Text(index.toString()),
            ),
          );
        },
      ),
    );
  }
}


/*

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    var len = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: myBackGroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          //Drawer
          myDrawer,

          //Rest of The Body
        ],
      ),
    );
  }
}


*/