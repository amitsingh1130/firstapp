import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("second page")),
        body: Column(
          children: [
            Center(child: Text("This is very useful app.")),

            ElevatedButton(
              child: Text("Click ${true}"),
              onPressed: () {
                print(true);
              },
            ),
          ],
        ),
      ),
    );
  }
}
