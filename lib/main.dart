import "package:flutter/material.dart";

import "./xylophone_page.dart";
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
      // SafeArea draws its child on a safe area. Sa that it doesn't bleed.
      home: SafeArea(
        child: XylophonePage(),
      ),
    );
  }
}
