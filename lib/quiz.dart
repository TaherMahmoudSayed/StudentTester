import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final Function(int? score) answerHandler;
  final  questions;
  final  questionIndex;
  Quiz( this.answerHandler, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(questions[questionIndex]['questionText'].toString()),
           ...(questions[questionIndex]['answers']as List<Map<String,Object>>).map((answer)
           {
             return Answer(()=>answerHandler((int.tryParse(answer['score'].toString()))), answer['Text'].toString());
           }).toList()
          ],
        );
  }
}