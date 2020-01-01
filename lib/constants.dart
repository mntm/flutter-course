import "package:flutter/material.dart";

// As a convention, we begin the name of a constant with a 'k';
// But to distinguish your constants with flutters, add 'App' after the 'k'
// to keep everything consistant.

const TextStyle kAppLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: kAppSecondaryTextColor,
);

const TextStyle kAppNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900
);


const Color kAppAccentColor = Color(0xffeb1555);
const Color kAppSecondaryTextColor = Color(0xff8d8e98);
const Color kAppInactiveCardColor = Color(0xff111328);
const Color kAppActiveCardColor = Color(0xff1d1e33);