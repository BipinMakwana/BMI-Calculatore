// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_widgets.dart';
import 'constants.dart';
import 'bmi_brain.dart';
import 'result_screen.dart';

enum Gender { male, female }

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender? selectedGender = Gender.male;
  int height = 150;
  int age = 18;
  int weight = 55;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Theme(
            data: ThemeData.dark(),
            child: Text(
              'BMI Calculator',
              style: TextStyle(color: Colors.white),
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colors: selectedGender == Gender.male
                      ? kActiveColor
                      : kInActiveColor,
                  customChild: GenderColumn(
                    icon: FontAwesomeIcons.mars,
                    string: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  customChild: GenderColumn(
                    icon: FontAwesomeIcons.venus,
                    string: 'FEMALE',
                  ),
                  colors: selectedGender == Gender.female
                      ? kActiveColor
                      : kInActiveColor,
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              customChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kHeadingStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: kMySliderTheme,
                    child: Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 220.0,
                        label: height.toString(),
                        onChanged: (newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
              colors: kMyColor,
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ReusableCard(
                  customChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toString(),
                            style: kHeadingStyle,
                          ),
                          Text(
                            'kg',
                            style: kLabelStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onTap: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onTap: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  colors: kMyColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  customChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            age.toString(),
                            style: kHeadingStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onTap: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onTap: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  colors: kMyColor,
                ),
              ),
            ],
          )),
          BottomButton(
            onPressed: () {
              setState(() {
                BMICalculator calc =
                    BMICalculator(height1: height, weight1: weight);

                print(calc.getCalculate());
                String bmiResult = calc.getCalculate();
                String bmiResultText = calc.getResultText();
                String bmiFeedback = calc.feedbackText();

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        resultText: bmiResultText,
                        result: bmiResult,
                        feedbackText: bmiFeedback,
                      ),
                    ));
              });
            },
            text: 'CALCULATE',
          )
        ],
      ),
    );
  }
}
