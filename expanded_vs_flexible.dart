import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlexibleWidgetExample());
}

class FlexibleWidgetExample extends StatelessWidget {
  const FlexibleWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flexible Widget'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  width: 500,
                  color: Colors.black,
                  child: const Text(
                    'Container-1',
                    style: TextStyle(fontSize: 20, color: Colors.amber),
                  ),
                ),
              ),

              Flexible(
                // fit: FlexFit.tight,
                child: Container(
                  height: 150,
                  width: 500,
                  color: const Color.fromARGB(255, 210, 35, 35),
                  child: const Text(
                    'Container-2',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),

              // Flexible(
              //   fit: FlexFit.loose,
              //   flex: 2,
              //   child: Container(
              //     color: const Color.fromRGBO(33, 150, 243, 1),
              //   ),
              // ),
              // Flexible(
              //   fit: FlexFit.loose,
              //   flex: 3,
              //   child: Container(
              //     color: Colors.black,
              //   ),
              // ),
              // Flexible(
              //   fit: FlexFit.tight,
              //   flex: 1,
              //   child: Container(
              //     color: Colors.green,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
