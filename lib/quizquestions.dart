import 'package:mobileapps/questionclass.dart';

import '';

class QuestionArray {
  static List<Question> basiccodingquestion = [
    Question("Flutter is only used for developing Android apps? T/F", false),
    Question("C is a programming language? T/F", true),
    Question("C++ is not an object oriented language.. T/F", false),
    Question("Python has dictionary.. T/F", true),
    Question("Flutter is developed by Facebook..T/F", false),
    Question("Flutter uses the Dart programming language..T/F ",true),
    Question("HTML is used to create web pages? T/F", true),
  ];
  static List<Question> genaralquestion = [
    Question("The sum of 25 and 17 is 42? T/F", true),
    Question("The sun rises in the west? T/F", false),
    Question("The sun is star..T/F", true),
    Question("The chemical symbol for water is H2O? T/F", true),
    Question("5 multiplied by 6 is 35? T/F", false),
    Question("A triangle has four sides? T/F", false),
    Question("There are 60 minutes in an hour? T/F", true),

  ];


  static List<Question> tense = [
    Question("She eats lunch at 12 every day' is in the present simple tense? T/F", true),
    Question("They were playing football when it started to rain' is in the future continuous tense? T/F", false),
    Question("I have finished my homework' is in the present perfect tense? T/F", true),
    Question("He will have arrived by 5 PM' is in the future perfect tense? T/F", true),
    Question("She is reading a book yesterday' is grammatically correct? T/F", false),
    Question("We go to the park last Sunday' is in the past simple tense? T/F", false),
    Question("I had eaten before he arrived' is in the past perfect tense? T/F", true),
    Question("They will play tennis tomorrow' is in the future simple tense? T/F", true)
  ];
  static List<Question> currentquiz = QuestionArray.tense;

}
