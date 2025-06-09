import 'package:flutter/material.dart';

class Newapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( ),
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
                      child: Container(
                        child: Center(
                          child: Text(

                            "A. Berlin",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        color: Colors.pink,
                        height: 130,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            "B. Madrid",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        color: Colors.green,
                        height: 130,
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
                      child: Container(
                        child: Center(
                          child: Text(
                            "C. Paris",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        color: Colors.yellowAccent,
                        height: 130,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text(
                            "D. Rome",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        color: Colors.grey,
                        height: 130,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Expanded(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print('Submit');
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        backgroundColor: Colors.yellow,
                        fontSize: 35,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
