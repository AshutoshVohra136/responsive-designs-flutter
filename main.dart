import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutBuilderExample());
}

class LayoutBuilderExample extends StatefulWidget {
  const LayoutBuilderExample({super.key});

  @override
  State<LayoutBuilderExample> createState() => _LayoutBuilderExampleState();
}

/*


 setState(() {
              if (kDebugMode) {
                print(MediaQuery.of(context).size.width);
              }
            });


*/
class _LayoutBuilderExampleState extends State<LayoutBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(builder: (context, constraints) {
          {
            if (kDebugMode) {
              print(MediaQuery.of(context).size.width);
            }
            if (constraints.maxWidth > 600) {
              return _buildWideContainer();
            } else {
              return _buildNormalContainer();
            }
          }
        }),
      ),
    );
  }
}

Widget _buildWideContainer() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 300,
          width: 300,
          color: Colors.black,
        ),
        Container(height: 300, width: 300, color: Colors.blue),
      ],
    ),
  );
}

Widget _buildNormalContainer() {
  return Center(
    child: Container(
      height: 300,
      width: 300,
      color: Colors.black,
    ),
  );
}
