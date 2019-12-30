import "package:flutter/material.dart";
import "./score.dart";

class ScoreKeeperWidget extends StatefulWidget {
  ScoreKeeperWidget({Key key, @required this.scores}) : super(key: key);

  final List<bool> scores;

  int countRightAnswer() {
    int ret = 0;
    for (bool item in scores) {
      if (item == true) ret++;
    }
    return ret;
  }

  @override
  _ScoreKeeperWidgetState createState() => _ScoreKeeperWidgetState();
}

class _ScoreKeeperWidgetState extends State<ScoreKeeperWidget> {
  @override
  Widget build(BuildContext context) {
    List<Widget> icons = [];

    for (bool item in widget.scores) {
      icons.add(BooleanScoreWidget(score: item));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: icons,
          ),
        ),
        Expanded(
          child: NumericScoreWidget(
            score: widget.countRightAnswer(),
          ),
        )
      ],
    );
  }
}
