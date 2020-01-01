import "package:flutter/material.dart";

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;

  // Default value for method (constructor) args needs to be a constant. Hence the
  // declaration of defaultColor to be const const.
  static const Color defaultColor = const Color(0xff1d1e33);

  ReusableCard({
    this.color = ReusableCard.defaultColor,
    this.child,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
          margin: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: this.child),
    );
  }
}
