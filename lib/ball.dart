import "package:flutter/material.dart";
import "dart:math";

class Ball extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BallState();
  }
}

class _BallState extends State<Ball> {
  int _ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            _ballNumber = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset('images/ball$_ballNumber.png'),
      ),
    );
  }
}
