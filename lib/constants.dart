import 'package:flutter/material.dart';

const kMyColor = Colors.blue;
const kActiveColor = Colors.blue;
const kInActiveColor = Color(0xff90CAF9);
const kLabelStyle =
    TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold);
const kResultLabelStyle =
    TextStyle(fontSize: 23.0, color: Colors.white, fontWeight: FontWeight.bold);
const kHeadingStyle =
    TextStyle(fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.w900);
const kResultHeadingStyle = TextStyle(
    fontSize: 100.0, color: Colors.white, fontWeight: FontWeight.w900);
const kBottomButton =
    TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold);
const kMySliderTheme = SliderThemeData(
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
  activeTrackColor: Colors.white,
  inactiveTrackColor: Color(0xff90caf9),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
  thumbColor: Color(0xff90CAF9),
  overlayColor: Color(0x60BBDEFB),
);
