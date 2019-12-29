import "package:flutter/material.dart";

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      print('Left button pressed');
                    },
                    child: Image.asset('images/dice1.png'),
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
          ),
    );
  }
}