import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var questionIndex = 0;
  var questions = [
    {
      "questionText": "How old r u",
      "answers": [
        {'Text': 10, 'score': 10},
        {'Text': 20, 'score': 20},
        {'Text': 30, 'score': 30}
      ]
    },
    {
      "questionText": "what's ur favorit color",
      "answers": [
        {'Text': "blue", 'score': 10},
        {'Text': "red", 'score': 5},
        {'Text': "green", 'score': 2}
      ]
    },
    {
      "questionText": "who's ur best frind",
      "answers": [
        {'Text': "ahmed", 'score': 7},
        {'Text': "tot", 'score': 4},
        {'Text': "shosh", 'score': 6}
      ]
    },
  ];
  var totalScore = 0;
  void answerQuestion(int? score) {
    setState(() {
      //if (questionIndex <questions.length)
      questionIndex += 1;
      this.totalScore += score != null ? score : 0;
      print(this.totalScore);
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Student Tester'),
          ),
          body: questionIndex < questions.length
              ? Quiz(answerQuestion, questions, questionIndex)
              : Result(resetQuiz, this.totalScore)),
    );
  }
}
