// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'constants.dart';
import 'custom_widgets.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {required this.resultText,
      required this.result,
      required this.feedbackText});

  final String resultText;
  final String result;
  final String feedbackText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Theme(
            data: ThemeData.light(),
            child: Text(
              'BMI Calculator',
              style: TextStyle(color: Colors.white),
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Your Result',
                  style: kBottomButton,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: () {},
              colors: kActiveColor,
              customChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    resultText.toUpperCase(),
                    style: kResultLabelStyle,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    result,
                    style: kResultHeadingStyle,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    feedbackText,
                    textAlign: TextAlign.center,
                    style: kResultLabelStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPressed: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
