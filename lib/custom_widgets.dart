// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

//male and female sign card
class GenderColumn extends StatelessWidget {
  GenderColumn({required this.icon, required this.string});

  final IconData? icon;
  final String? string;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          color: Colors.white,
          size: 90.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          string!,
          style: kLabelStyle,
        )
      ],
    );
  }
}

// all cards
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colors, this.customChild, this.onPress});

  final Color? colors;
  final Widget? customChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: customChild,
      ),
    );
  }
}

// + - button
class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onTap});

  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      constraints: BoxConstraints(minWidth: 50.0, minHeight: 50.0),
      fillColor: kInActiveColor,
      shape: CircleBorder(),
      elevation: 5.0,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}

//BottomButton
class BottomButton extends StatelessWidget {
  BottomButton({required this.text, required this.onPressed});

  final String? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.blue,
        height: 70.0,
        width: double.infinity,
        child: Center(
          child: Text(
            text!,
            style: kBottomButton,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
