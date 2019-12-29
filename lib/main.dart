import "package:flutter/material.dart";

// With dart, when a function (or method) contains only one instruction,
// we can use the so called 'fat arrow' (=>) to shorten its declaration
void main() => runApp(MyApp());

// To be able to use hot reload and hot restart,
// we need to declare the application as a Widget.
// So that flutter could track the change made to the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The Scaffold widget permits us to add appbars
      // and other material widget (FAB) in our application.
      // It is the equivalent of CoordinatorLayout on android.
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            width: 100.0,
            height: 100.0,
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.only(left: 20, top: 20),
            color: Colors.white,
            child: Text(
              'Hello',
            ),
          ),
        ),
      ),
    );
  }
}
