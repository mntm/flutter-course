import "package:flutter/material.dart";

import "reusable_card.dart";
import "fa_icons.dart";
import "icon_content.dart";

const double bottomBarHeight = 56.0;
const Color defaultBottomBarColor = Color(0xffeb1555);

const Color inactiveCardColor = Color(0xff111328);
const Color activeCardColor = Color(0xff1d1e33);

enum Gender {
  MALE,
  FEMALE
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color _maleCardColor = inactiveCardColor;
  Color _femaleCardColor = inactiveCardColor;

  // change the color of the card. 1: male, 2: female
  void updateColor(Gender gender) {
    if (gender == Gender.MALE) {
      if (_maleCardColor == inactiveCardColor) {
        _maleCardColor = activeCardColor;
        _femaleCardColor = inactiveCardColor;
      } else {
        _maleCardColor = inactiveCardColor;
      }
    }
    if (gender == Gender.FEMALE) {
      if (_femaleCardColor == inactiveCardColor) {
        _femaleCardColor = activeCardColor;
        _maleCardColor = inactiveCardColor;
      } else {
        _femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        updateColor(Gender.MALE);
                      });
                    },
                    child: ReusableCard(
                      color: _maleCardColor,
                      child: IconContent(
                          icon: FontAwesomeIcons.diamond, text: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState((){
                        updateColor(Gender.FEMALE);
                      });
                    },
                    child: ReusableCard(
                      color: _femaleCardColor,
                      child: IconContent(
                          icon: FontAwesomeIcons.dollar, text: 'FEMALE'),
                    ),
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
            color: defaultBottomBarColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomBarHeight,
          ),
        ],
      ),
    );
  }
}
