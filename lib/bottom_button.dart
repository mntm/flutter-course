import "package:flutter/material.dart";
import "constants.dart";



class BottomButton extends StatelessWidget {
  final Function onPressed;
  final String title;

  BottomButton({@required this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kAppAccentColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        alignment: Alignment.center,
        child: Text(title, style: kAppBottomBarTextStyle),
      ),
    );
  }
}
