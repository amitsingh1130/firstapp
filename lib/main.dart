import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  int n=0;
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Apple  ')),
        body: Column(children: [Center(child: Text('follow good habits')),
          ElevatedButton(onPressed: (){
            print(widget.n);
            widget.n++;
            setState(() {

            });

          }, child: Text("Click ${widget.n}")),


        ]),
         ),
      );

  }
}
