import "package:flutter/material.dart";
import 'package:iamrich/round_icon_button.dart';

import "reusable_card.dart";
import "fa_icons.dart";
import "icon_content.dart";
import "constants.dart";
import "result_page.dart";
import 'bmi_calculator.dart';
import "bottom_button.dart";

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _selectedGender;
  int _height = 180;
  int _weight = 60;
  int _age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        _selectedGender = Gender.MALE;
                      });
                    },
                    color: (_selectedGender == Gender.MALE)
                        ? kAppActiveCardColor
                        : kAppInactiveCardColor,
                    child: IconContent(
                        icon: FontAwesomeIcons.diamond, text: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        _selectedGender = Gender.FEMALE;
                      });
                    },
                    color: (_selectedGender == Gender.FEMALE)
                        ? kAppActiveCardColor
                        : kAppInactiveCardColor,
                    child: IconContent(
                        icon: FontAwesomeIcons.dollar, text: 'FEMALE'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kAppLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    // In order to align texts on their baseline, one should define
                    // both `crossAxisAlignment` and `textBaseline` properties.
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(_height.toString(), style: kAppNumberTextStyle),
                      Text('cm', style: kAppLabelTextStyle)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kAppSecondaryTextColor,
                      thumbColor: kAppAccentColor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayColor: kAppAccentColor.withAlpha(0x29),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 28.0),
                    ),
                    child: Slider(
                      // the slider itself do not display the changed value.
                      // You have to explicitly change its state with a call of setstate
                      value: _height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double val) {
                        setState(() {
                          _height = val.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      children: <Widget>[
                        Text('WEIGHT', style: kAppLabelTextStyle),
                        Text(_weight.toString(), style: kAppNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.boxed_minus,
                              onPressed: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                                icon: FontAwesomeIcons.boxed_plus,
                                onPressed: () {
                                  setState(() {
                                    _weight++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      child: Column(
                    children: <Widget>[
                      Text('AGE', style: kAppLabelTextStyle),
                      Text(_age.toString(), style: kAppNumberTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.boxed_minus,
                            onPressed: () {
                              setState(() {
                                _age--;
                              });
                            },
                          ),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                              icon: FontAwesomeIcons.boxed_plus,
                              onPressed: () {
                                setState(() {
                                  _age++;
                                });
                              }),
                        ],
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
          BottomButton(
                title: 'CALCULATE',
                onPressed: () {
                  BMICalculator calc = BMICalculator(
                    height: _height/100,
                    weight: _weight
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(
                      bmiResult: calc.getBMI(),
                      interpretation: calc.getInterpretation(),
                      resultText: calc.getResult(),
                    )),
                  );
                }),
        ],
      ),
    );
  }
}
