import 'package:flutter/material.dart';
import 'package:mobileapps/utilities.dart';
import 'package:mobileapps/vsjone.dart';

void main() {
   runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
         '/': (context) => VsjOne(),
         '/second': (context) => VsjTwo(),
         '/three': (context) => VsjThree(),
      },
   ));
}

//*******************************VsjOne************************************

class VsjTwo extends StatefulWidget {
   @override
   _VsjTwo createState() {
      return _VsjTwo();
   }
}

class _VsjTwo extends State<VsjTwo> {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
         backgroundColor: Colors.tealAccent,
         appBar: AppBar(
            centerTitle: true,
            title: const Text("VSJ Two"),
         ),
         body: Column(
            children: [
               Center(
                  child: Card(
                     child: ElevatedButton(
                        onPressed: () {
                           Navigator.pushNamed(context, '/three');
                        },
                        child: const Text('Go to VSJ:3'),
                     ),
                  ),
               ),
               Center(
                  child: Card(
                     child: ElevatedButton(
                        onPressed: () {
                           Navigator.pushNamed(context, '/');
                        },
                        child: const Text('Go back to VSJ:1'),
                     ),
                  ),
               ),
               Hero(
                  tag: 'logo',
                  child: Center(
                     child: Card(
                         child: Image(
                             height: 200, image: NetworkImage(Utilities.imagepath))),
                  ),
               ),
            ],
         ),
      );
   }
}

//*******************************VsjTwo************************************

//*******************************VsjThree************************************

class VsjThree extends StatefulWidget {
   @override
   _VsjThree createState() {
      return _VsjThree();
   }
}

class _VsjThree extends State<VsjThree> {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
         backgroundColor: Colors.teal,
         appBar: AppBar(
            centerTitle: true,
            title: const Text("VSJ Three"),
         ),
         body: Column(
            children: [
               Center(
                  child: Card(
                     child: ElevatedButton(
                        onPressed: () {
                           Navigator.pop(context);
                        },
                        child: const Text('Go back to VSJ:2'),
                     ),
                  ),
               ),
               Hero(
                  tag: 'logo',
                  child: Center(
                     child: Card(
                         child: Image(
                             height: 200, image: NetworkImage(Utilities.imagepath))),
                  ),
               ),
            ],
         ),
      );
   }
}

//*******************************VsjThree************************************

//*******************************Utilities************************************


//*******************************Utilities************************************