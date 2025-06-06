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
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            "What is the capital of France?",
                            style: TextStyle(fontSize: 50),
                          ),
                        ),
                        color: Colors.indigo,
                        height: 120,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(color: Colors.pinkAccent, height: 120),
                    ),
                    Expanded(
                      child: Container(color: Colors.brown, height: 120),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(color: Colors.yellow, height: 125),
                    ),
                    Expanded(
                      child: Container(color: Colors.purple, height: 125),
                    ),
                    Expanded(
                      child: Container(color: Colors.orange, height: 125),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          "A. Berlin",
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Colors.pink,
                        height: 130,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "B. Madrid",
                          style: TextStyle(fontSize: 20),
                        ),
                        color: Colors.green,
                        height: 130,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text("C. Paris", style: TextStyle(fontSize: 20)),
                        color: Colors.white,
                        height: 130,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text("D. Rome", style: TextStyle(fontSize: 20)),
                        color: Colors.grey,
                        height: 130,
                      ),
                    ),
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
