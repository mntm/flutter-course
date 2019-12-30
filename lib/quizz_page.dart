import "package:flutter/material.dart";

import "./question.dart";

class Quizzler extends StatefulWidget {
  Quizzler({Key key}) : super(key: key);

  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [];

  List<Question> questions = [
    Question(
        mQuestion: 'You can lead a cow down stairs but not up stairs.',
        mAnswer: "False"),
    Question(
        mQuestion: 'Approximately one quarter of human bones are in the feet.',
        mAnswer: "True"),
    Question(mQuestion: 'A slug\'s blood is green.', mAnswer: "True")
  ];

  int currentQuestion = 0;

  void nextQuestion() {
    print(currentQuestion);
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          // The flex parameter ensures that this expanded widget
          // takes 5 times more place than the others
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: questions[currentQuestion],
            ),
          ),
        ),
        buildButton(color: Colors.green, text: 'True'),
        buildButton(color: Colors.red, text: 'False'),
      ],
    );
  }

  Expanded buildButton({Color color,String text}) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
            color: color,
            onPressed: () {
              print(questions[currentQuestion].isRightAnswer(text));
              nextQuestion();
            },
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      );
  }
}
