import "package:flutter/material.dart";

class Question extends StatelessWidget {
  const Question({Key key, this.mQuestion, this.mAnswer}) : super(key: key);

  final String mQuestion;
  final String mAnswer;

  @override
  Widget build(BuildContext context) {
    return Text(
      mQuestion,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25.0,
        color: Colors.white,
      ),
    );
  }

  bool isRightAnswer(String answer){
    return (answer.compareTo(mAnswer) == 0);
  }
}
