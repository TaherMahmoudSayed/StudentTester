import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final Function() resetQuizHandler;
  Result(this.resetQuizHandler, this.score);
  get resultPhrase {
    if (this.score < 20)
      return "you are so bad";
    else
      return "you are awesome";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(resultPhrase.toString() +
              ". ur score is:" +
              this.score.toString()),
        ),
        FlatButton(
          onPressed: resetQuizHandler,
          child: Text('Reset Quizes'),
          color: Colors.blue,
        ),
      ],
    );
  }
}
