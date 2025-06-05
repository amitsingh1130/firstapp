import 'package:flutter/material.dart';

class Newapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Demo App")),
        body: Column(

          children: [
            Container(
              padding: EdgeInsets.all(7),
              color: Colors.deepPurple,
              child: Text(
                "Header",
                style: TextStyle(
                  fontSize: (32),
                  color: Colors.green,
                  backgroundColor: Colors.yellowAccent,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(32),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.brown.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Text(
                        "AMIT",
                        style: TextStyle(
                          backgroundColor: Colors.redAccent,
                          fontSize: (56),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(Switch);
                    },
                    child: Text(
                      "switch",
                      style: TextStyle(
                        color: Colors.teal,
                        backgroundColor: Colors.yellow,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.greenAccent)),
                        ElevatedButton(
                          onPressed: () {
                            print(Router);
                          },
                          child: Text(
                            "Router",
                            style: TextStyle(
                              color: Colors.teal,
                              backgroundColor: Colors.yellow,
                              fontSize: 35,
                            ),
                          ),
                        ),
                        Expanded(child: Container(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(32),
              color: Colors.yellowAccent,
              child: Text("Footer", style: TextStyle(fontSize: (32))),
            ),
          ],
        ),
      ),
    );
  }

  const Newapp({super.key});
}
