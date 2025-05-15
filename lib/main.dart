import 'package:flutter/material.dart';

void main() => runApp(  Amit());

// #docregion my-app

class Amit extends StatelessWidget {
  int n= 0;
   Amit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'amitTitle',
      home: Scaffold(
        appBar: AppBar(title:   Text('amit $n')),
        // #docregion centered-text
        body:   Row(
          children: [
            Center(
              // #docregion text
              child: Text('To path to success is never easy'),
              // #enddocregion text
            ),
            Center(
              // #docregion text
              child: ElevatedButton(onPressed: onPressed, child: Text('+')),
              // #enddocregion text
            ),
          ],
        ),

        // #enddocregion centered-text
      ),
    );
  }

  void onPressed() {
    n++;
    print("Count = $n");
  }
}




