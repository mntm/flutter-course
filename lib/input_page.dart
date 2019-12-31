import "package:flutter/material.dart";
import "reusable_card.dart";

const double bottomBarHeight = 56.0;
const Color defaultBottomBarColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {    
        return Scaffold(
          appBar: AppBar(
            title: Text('BMI CALCULATOR'),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(),
                    ),
                    Expanded(
                      child: ReusableCard(),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ReusableCard(),
                    ),
                    Expanded(
                      child: ReusableCard(),
                    )
                  ],
                ),
              ),
              Container(
                color: defaultBottomBarColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomBarHeight,
          ),
        ],
      ),
    );
  }
}
