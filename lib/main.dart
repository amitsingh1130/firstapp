import 'package:flutter/material.dart';
import 'package:mobileapps/utilities.dart';
import 'package:mobileapps/pageone.dart';


void main() {
   runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
         '/': (context) => PageOne(),
         '/second': (context) => PageTwo(),
         '/three': (context) => PageThree(),
      },
   ));
}




//*******************************PageOne************************************

//*******************************PageTwo************************************

//*******************************PageThree************************************

class PageThree extends StatefulWidget {
   @override
   _PageThree createState() {
      return _PageThree();
   }
}

class _PageThree extends State<PageThree> {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
         backgroundColor: Colors.indigo,
         appBar: AppBar(
            centerTitle: true,
            title: const Text("Page Three"),
         ),
         body: Column(
            children: [
               Center(
                  child: Card(
                     child: ElevatedButton(
                        onPressed: () {
                           Navigator.pop(context);
                        },
                        child: const Text('Go back to Page:2'),
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



class PageTwo extends StatefulWidget {
   const PageTwo({super.key});

   @override
   _PageTwo createState() {
      return _PageTwo();
   }
}

class _PageTwo extends State<PageTwo> {
   @override
   Widget build(BuildContext context) {
      return Scaffold(
         backgroundColor: Colors.red,
         appBar: AppBar(
            centerTitle: true,
            title: const Text("Page Two"),
         ),
         body: Column(
            children: [
               Center(
                  child: Card(
                     child: ElevatedButton(
                        onPressed: () {
                           Navigator.pushNamed(context, '/three');
                        },
                        child: const Text('Go to Page:3'),
                     ),
                  ),
               ),
               Center(
                  child: Card(
                     child: ElevatedButton(
                        onPressed: () {
                           Navigator.pushNamed(context, '/');
                        },
                        child: const Text('Go back to Page:1'),
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
