import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  int n = 0;
  int i = (-1);
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: true,
      home: Scaffold(
        appBar: AppBar(title: Text('Page')),
        body: Column(
          children: [
            Center(
              child: Text(
                ' ${widget.n}  जीवन एक यात्रा है, मंजिल नहीं।'
                'हर दिन एक नया अवसर है खुद को बेहतर बनाने का।'
                'सकारात्मक सोचो, सकारात्मक रहो।'
                'हर सुबह एक नया आशीर्वाद और एक नया अवसर लेकर आती है।',
              ),
            ),
            Center(

            child: Text(
              '${widget.i} by leaps and bounds.'
            )
            ),
            ElevatedButton(
              onPressed: () {
                print(widget.n);
                widget.n++;
                setState(() {});
              },
              child: Text("Click ${widget.n}"),
            ),

            ElevatedButton(
              onPressed: () {
                print(widget.i);
                widget.i--;
                setState(() {});
              },
              child: Text("Click ${widget.i}"),
            ),
          ],
        ),
      ),
    );
  }
}
