import "package:flutter/material.dart";
import 'package:rflutter_alert/rflutter_alert.dart';

import "./score_keeper.dart";
import "./quiz_brain.dart";
import "./question.dart";

QuizBrain quizBrain = QuizBrain();

class Quizzler extends StatefulWidget {
  Quizzler({Key key}) : super(key: key);

  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
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
              child: QuestionWidget(
                question: quizBrain.getQuestionText(),
              ),
            ),
          ),
        ),
        _buildButton(color: Colors.green, text: 'True', context: context),
        _buildButton(color: Colors.red, text: 'False', context: context),
        ScoreKeeperWidget(scores: quizBrain.getRecordedAnswer()),
      ],
    );
  }

  void _buildAlertDialog(BuildContext context) {
    Alert(
      context: context,
      title: "Quizzler",
      type: AlertType.info,
      desc: "You finished our Quiz",
      buttons: [
        DialogButton(
            child: Text("Reset"),
            onPressed: () {
              quizBrain.resetQuiz();
              Navigator.pop(context);
              setState((){});
            }),
      ],
    ).show();
  }

  Expanded _buildButton({Color color, String text, BuildContext context}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          color: color,
          onPressed: () {
            if (quizBrain.isFinished()) {
              _buildAlertDialog(context);
            } else {
              quizBrain.recordAnswer(quizBrain.isRightAnswer("True" == text));
              setState(() {
                quizBrain.nextQuestion();
              });
            }
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
