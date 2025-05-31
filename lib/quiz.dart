import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobileapps/questionclass.dart';
import 'package:mobileapps/quizquestions.dart';

class VSJQuiz extends StatefulWidget {
  @override
  _VSJQuizState createState() => _VSJQuizState();
}

class _VSJQuizState extends State<VSJQuiz> {
  String currentquestiontext = "Press any button to start the quiz";
  String currentquiz = "press quiz.1 button to open firstquizquestions";
  String currentquestiontext2 = "press back button to exit this page ";

  int questionno = -1;
  int correctanswers = 0;
  bool isTestOver = false;
  List<Question> questions = QuestionArray.currentquiz;
  Question? currentquestion;
  List<Widget> scores = [];

  void setQuestion(bool b) {
    //isTestOver=press back button;
    //questionno=-1;
    //scores.clear();

    if (isTestOver) return;

    if (questionno == -1) {
      questionno++;
      currentquestion = questions[questionno];
      currentquestiontext = currentquestion!.question;
      return;
    }

    if (questionno >= questions.length - 1) {
      addResult(b);
      currentquestiontext = "Questions Over. Correct answers = $correctanswers";
      isTestOver = true;
      IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      );
      return;
    }

    addResult(b);
    questionno++;
    if (questionno <= questions.length - 1) {
      currentquestion = questions[questionno];
      currentquestiontext = currentquestion!.question;
    }
  }

  void addResult(bool b) {
    bool iscorrect = b == currentquestion!.correctAnswer;
    //scores.clear();
    if (iscorrect) {
      correctanswers++;
      scores.add(const Icon(Icons.check, color: Colors.green));
    } else {
      scores.add(const Icon(Icons.close, color: Colors.red));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                currentquestiontext,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25.0, color: Colors.black87),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                print("Submitted True");
                setState(() {
                  // addResult(true);
                  setQuestion(true);
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'False',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                print("Submitted False");
                setState(() {
                  // addResult(false);
                  setQuestion(false);
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'Basic Coding Question',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                print("Submitted Basic Coding Question");
                QuestionArray.currentquiz = QuestionArray.basiccodingquestion;
                questionno = -1;

                correctanswers = 0;
                isTestOver = false;
                questions = QuestionArray.currentquiz;
                currentquestion = null;
                scores = [];

                setState(() {
                  // addResult(quiz.1);
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'General Question',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                print("Submitted General Question");
                QuestionArray.currentquiz = QuestionArray.genaralquestion;
                questionno = -1;

                correctanswers = 0;
                isTestOver = false;
                questions = QuestionArray.currentquiz;
                currentquestion = null;
                scores = [];

                setState(() {
                  // addResult(quiz.2);
                });
              },
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54,
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'Tense',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                print("Submitted Tense");

                QuestionArray.currentquiz = QuestionArray.tense;
                questionno = -1;

                correctanswers = 0;
                isTestOver = false;
                questions = QuestionArray.currentquiz;
                currentquestion = null;
                scores = [];

                setState(() {
                  // addResult(quiz.3);
                });
              },
            ),
          ),
        ),

        Row(children: scores),
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        // ← Back button is automatically shown
      ),
      body: Center(child: Text('This is the second screen')),
    );
  }
}
