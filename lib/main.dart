import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
              // This feeds the widget with an image bundled with the app
              image: AssetImage('images/diamond.png'),
            ),
        ),
      ),
    ),
  );
}
