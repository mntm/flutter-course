import "package:flutter/material.dart";

const BooleanScoreWidget positiveScore = const BooleanScoreWidget(
  score: true,
);
const BooleanScoreWidget negativeScore = const BooleanScoreWidget(
  score: false,
);

abstract class ScoreWidget extends StatelessWidget {
  const ScoreWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context);
}

class NumericScoreWidget extends ScoreWidget {
  final int score;
  final TextStyle style;

  const NumericScoreWidget({Key key, @required this.score, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSettedStyle = DefaultTextStyle.of(context).style.merge(
          TextStyle(
            fontFamily: 'DS-Digital',
          ),
        );

    return Text(
      score.toString(),
      textAlign: TextAlign.end,
      style: fontSettedStyle.merge(this.style),
    );
  }
}

class BooleanScoreWidget extends ScoreWidget {
  final bool score;
  final double size;
  final Color color;

  const BooleanScoreWidget({Key key, @required this.score, this.size, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IconThemeData iconTheme = IconTheme.of(context);

    final double iconSize = size ?? iconTheme.size;
    final Color iconColor = color ?? (this.score) ? Colors.green : Colors.red;

    return Icon(
      this.score == true ? Icons.check : Icons.close,
      size: iconSize,
      color: iconColor,
    );
  }
}
