import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      // The Scaffold widget permits us to add appbars 
      // and other material widget (FAB) in our application.
      // It is the equivalent of CoordinatorLayout on android.
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
