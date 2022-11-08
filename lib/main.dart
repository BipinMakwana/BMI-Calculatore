// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.blue.shade100,
          primaryColor: Colors.amber,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.amberAccent)),
      home: MyHomePage(),
    );
  }
}
