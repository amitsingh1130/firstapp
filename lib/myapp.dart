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
            Center(
              
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
class TriangleCalculator extends StatefulWidget {
  @override
  _TriangleCalculatorState createState() => _TriangleCalculatorState();
}
class _TriangleCalculatorState extends State<TriangleCalculator> {
  final baseController = TextEditingController();
  final heightController = TextEditingController();
  double? area;

  double calculateTriangleArea(double base, double height) {
    return area =1/2 * base * height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Triangle Area Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: baseController,
              decoration: InputDecoration(labelText: 'Enter base'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'Enter height'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double base = double.parse(baseController.text);
                double height = double.parse(heightController.text);
                setState(() {
                  area = calculateTriangleArea(base, height);
                });
              },
              child: Text('Calculate Area'),
            ),
            SizedBox(height: 20),
            Text(
              area != null ? 'Area: ${area!.toStringAsFixed(2)}' : '',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}