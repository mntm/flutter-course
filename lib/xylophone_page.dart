import "package:flutter/material.dart";

// TODO add sound on button pressed (add dep: audioplayers)

class XylophonePage extends StatelessWidget {
  const XylophonePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildKey(color: Colors.red),
        buildKey(color: Colors.orange),
        buildKey(color: Colors.yellow),
        buildKey(color: Colors.green),
        buildKey(color: Colors.blue),
        buildKey(color: Colors.purple),
        buildKey(color: Colors.indigo),
      ],
    );
  }

  Expanded buildKey({Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {},
        color: color, child: null,
      ),
    );
  }
}
