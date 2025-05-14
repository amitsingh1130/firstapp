import 'package:flutter/material.dart';

void main() => runApp(const Amit());

// #docregion my-app

class Amit extends StatelessWidget {
  const Amit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'amitTitle',
      home: Scaffold(
        appBar: AppBar(title: const Text('amit')),
        // #docregion centered-text
        body: const Center(
          // #docregion text
          child: Text('To path to success is never easy'),
          // #enddocregion text
        ),
        // #enddocregion centered-text
      ),
    );
  }
}
