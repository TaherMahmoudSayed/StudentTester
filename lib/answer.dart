import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Answer extends StatelessWidget {
  final Function() answerHandler;
  var answerText;
  Answer(this.answerHandler, this.answerText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        child: Text( this.answerText),
        onPressed: answerHandler,
      ),
    );
  }
}
