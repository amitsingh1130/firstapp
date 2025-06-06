import 'package:flutter/material.dart';

class Newapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Demo App")),
        body: Column(
          children: [
            Column(
              children: [
                Text("Amit"),
                Row(
                  children: [
                    Expanded(child: Container(color: Colors.indigo,height: 100))
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text("Header"),
                Row(
                  children: [
                    Expanded(child: Container(color: Colors.pinkAccent, height: 100)),
                    Expanded(child: Container(color: Colors.brown, height: 100)),
                  ],
                ),
                Text("Footer"),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Container(color: Colors.yellow, height: 100)),
                    Expanded(child: Container(color: Colors.purple, height: 100)),
                    Expanded(child: Container(color: Colors.orange, height: 100)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
