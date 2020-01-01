import "package:flutter/material.dart";

import "constants.dart";

class IconContent extends StatelessWidget {

  final IconData icon;
  final String text;

  IconContent({@required this.icon, this.text=''});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 50.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.text,
          style: kAppLabelTextStyle,
        )
      ],
    );
  }
}

