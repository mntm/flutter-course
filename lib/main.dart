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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/portrait_3_4.jpg'),
                radius: 50.0,
              ),
              Text(
                'Tsiry Marcel',
                style: TextStyle(
                    fontSize: 42.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DejaVu Sans'),
              ),
              Text(
                'MOBILE DEVELOPER',
                style: TextStyle(
                    color: Colors.teal[100],
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 1.25,
                    fontFamily: 'Source Code Pro'),
              ),
              SizedBox(
                height: 25.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal),
                  title: Text(
                    '+261 32 80 942 79',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 20.0,
                        fontFamily: 'Source Code Pro'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text(
                    'tsiry.marcel@yahoo.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Source Code Pro'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Container(
//
//                 padding: EdgeInsets.all(10.0),
//                 color: Colors.white,
//                 child: Row(
//                   children: <Widget>[
//
//                     SizedBox(
//                       width: 10.0,
//                     ),
//
//                   ],
//                 ),
//               ),
//               Container(
//                 color: Colors.white,
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                 padding: EdgeInsets.all(10.0),
//                 child: Row(
//                   children: <Widget>[
//
//                     SizedBox(
//                       width: 10.0,
//                     ),
//
//                   ],
//                 ),
//               )
