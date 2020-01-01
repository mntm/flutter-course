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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
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
            child: ReusableCard(),
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
            height: kAppBottomBarHeight,
          ),
        ],
      ),
    );
  }
}
