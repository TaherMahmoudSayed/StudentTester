import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blueAccent,
            height: 5,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ));
  }
}
