import "package:flutter/material.dart";


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftDiceNumber=2;
                      });
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      print('Right button pressed');
                    },
                    child: Image.asset('images/dice1.png'),
                  ),
                ),
              ],
            ),
          );
  }
}