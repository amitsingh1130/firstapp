 import "package:flutter/gestures.dart";
import "package:flutter/material.dart";


class NewApp extends StatefulWidget {
  const NewApp({super.key});

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  String currentquestiontext = "Press any button to start the quiz";
  String optatext = "", optbtext = "", optctext = "", optdtext = "";
  List<Widget> scores = [];
  int questionno = -1;
  int _selectedOption = 0;
  bool istestover = false;


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
