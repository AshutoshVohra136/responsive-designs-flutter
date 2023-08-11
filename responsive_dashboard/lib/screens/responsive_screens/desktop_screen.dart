// import 'package:flutter/material.dart';
// import 'package:responsive_dashboard/constants.dart';

// class DesktopScreen extends StatefulWidget {
//   const DesktopScreen({super.key});

//   @override
//   State<DesktopScreen> createState() => _DesktopScreenState();
// }

// class _DesktopScreenState extends State<DesktopScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var len = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: myBackGroundColor,
//       appBar: myAppBar,
//       body: GridView.builder(
//         // physics: const NeverScrollableScrollPhysics(),
//         itemCount: 50,
//         gridDelegate:
//             const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 50,
//               width: 50,
//               color: const Color.fromARGB(255, 141, 139, 132),
//               child: Image.network(
//                 'https://picsum.photos/id/$index/200/300',
//                 fit: BoxFit.fill,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

import '../../util/my_box.dart';
import '../../util/my_tile.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackGroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          //Drawer
          myDrawer,

          //Rest of The Body
          Expanded(
            flex: 4,
            child: Column(
              children: [
                // 4 Boxes

                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) => const MyBox(),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => const MyTile(),
                  ),
                ),
              ],
            ),
          ),

          // A Right Side Calender or Clocks

          Expanded(
              child: Container(
            color: Colors.pink,
          ))
        ],
      ),
    );
  }
}
