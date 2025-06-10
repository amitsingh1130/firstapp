import 'package:flutter/material.dart';
import 'package:mobileapps/utilities.dart';
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Page One'),
      ),
      body: Column(
        children: [
          Center(
            child: Card(
              child: ElevatedButton(
                  child: const Text('Go to Page:2'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  }),
            ),
          ),
          Hero(
            tag: 'logo',
            child: Center(
              child: Card(
                  child: Image(
                      height: 60, image: NetworkImage(Utilities.imagepath))),
            ),
          ),
        ],
      ),
    );
  }
}

//*******************************PageOne************************************

//*******************************PageTwo************************************
