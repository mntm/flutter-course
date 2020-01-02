import "package:flutter/material.dart";

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    //
    // Base Material object for buttons
    return RawMaterialButton(
      // give the button its shape
      shape: CircleBorder(),
      // give the button a fixed size)
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xff4c4f5e),
      // hover the button to add a shadow below it. 
      // Activated only when the button is in its enabled state, 
      // i.e, the onPressed property is set and not null.
      elevation: 0.0, // <- here we choose 0 because that is what was specified in the design
      onPressed: this.onPressed,
      child: Icon(this.icon),
    );
  }
}
