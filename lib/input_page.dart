import "package:flutter/material.dart";

import "reusable_card.dart";
import "fa_icons.dart";
import "icon_content.dart";
import "constants.dart";

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height=180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.MALE;
                        });
                      },
                      color: (selectedGender == Gender.MALE)
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
                          selectedGender = Gender.FEMALE;
                        });
                      },
                      color: (selectedGender == Gender.FEMALE)
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
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: kAppNumberTextStyle),
                        Text('cm', style: kAppLabelTextStyle)
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double val) {
                        setState(() {
                          height = val.round();
                        }); 
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(),
                  ),
                  Expanded(
                    child: ReusableCard(),
                  )
                ],
              ),
            ),
            Container(
              color: kAppDefaultBottomBarColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomNavigationBarHeight,
            ),
          ],
        ),
      ),
    );
  }
}
