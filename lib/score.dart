import "package:flutter/material.dart";

const BooleanScore positiveScore = const BooleanScore(score: true,);
const BooleanScore negativeScore = const BooleanScore(score: false,);

abstract class Score extends StatelessWidget {
  const Score({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) ;
}

class NumericScore extends Score{
  final int score;

  const NumericScore({Key key,@required this.score}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return null;
  }
}

class BooleanScore extends Score{
  final bool score;

  const BooleanScore({Key key,@required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return null;
  }
}