import "package:flutter/material.dart";

class Question {
  const Question(this.mQuestion, this.mAnswer);

  final String mQuestion;
  final bool mAnswer;

  bool isRightAnswer(bool answer){
    return (answer == mAnswer);
  }
}

class QuestionWidget extends StatelessWidget {
  final String question;
  const QuestionWidget({Key key, this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.question,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25.0,
        color: Colors.white,
      ),
    );
  }
}