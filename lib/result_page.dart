import "package:flutter/material.dart";

import 'reusable_card.dart';
import 'bottom_button.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.resultText,
   @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Result',
              style: kAppTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kAppActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kAppResultTextStyle,
                  ),
                  Text(bmiResult, style: kAppBMITextStyle),
                  Text(interpretation,
                      textAlign: TextAlign.center, style: kAppBodyTextStyle),
                ],
              ),
            ),
          ),
          BottomButton(
            onPressed: (){
              Navigator.pop(context);
            },
            title: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
