import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// #docregion my-app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('mera Title')),

        body: const Text('App ka body'
        ),
        // #enddocregion centered-text
      ),
    );
  }
}
