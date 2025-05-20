import 'package:flutter/material.dart';

class Adder extends StatefulWidget {
  double a = 0, b = 1;
  double result = 0;
  Adder({super.key});

  @override
  State<Adder> createState() => _AdderState();
}

class _AdderState extends State<Adder> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: true,
      home: Scaffold(
        appBar: AppBar(title: Text('Result = ${widget.result} ')),
        body: Column(
          children: [
            TextField(
              onChanged: (text) {
                // n = text;
                widget.a = double.parse(text);
                setState(() {});
                print('Add');
              },
            ),
            TextField(
              onChanged: (text2) {
                widget.b = double.parse(text2);
                setState(() {});
                print('Second text field: $text2 (${text2.characters.length}');
              },
            ),

            ElevatedButton(
              onPressed: () {
                widget.result = widget.a + widget.b;
                setState(() {});
              },
              child: Text("Add"),
            ),
            ElevatedButton(
              onPressed: () {
                widget.result = widget.a - widget.b;
                setState(() {});
              },
              child: Text("Minus"),
            ),
            ElevatedButton(
              onPressed: () {
                widget.result = widget.a * widget.b;
                setState(() {});
              },
              child: Text("Multiplied"),
            ),
            ElevatedButton(
              onPressed: () {
                widget.result = widget.a / widget.b;
                setState(() {});
              },
              child: Text("Divided"),
            ),
          ],
        ),
      ),
    );
  }
}
